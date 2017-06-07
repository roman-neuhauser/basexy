// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <bitset>
#include <string>
#include "slice.hpp"


template <
  typename Base
, typename Data = std::bitset<Base::block_size>
, size_t InputBits = Base::encoded_bits
, size_t OutputBits = Base::decoded_bits
, size_t BitSize = Base::block_size
>
struct decoder
{
  decoder()
  : watermark(0)
  , base()
  {}

  auto operator()(std::istream &is, std::ostream &os, std::ostream &es)
  {
    if (!is.good())
      return 2;
    auto sz = BitSize / InputBits;
    char buf[sz];
    size_t pos = 0;
    while (is.good()) {
      is.read(buf, sz);
      auto cnt = static_cast<size_t>(is.gcount());
      if (0 == cnt)
        break;
      auto sbuf = std::string(buf, cnt);
      for (size_t i = 0; i < cnt; ++i) {
        if (buf[i] == '=') {
          auto npad = sbuf.find_first_not_of("=", i);
          if (std::string::npos != npad)
            return bad_input(es, "invalid input", pos + npad);
          break;
        }
        auto dec = base.decode(buf[i]);
        if (dec < 0)
          return bad_input(es, "invalid input", pos + i);
        slice<InputBits>(data, BitSize - InputBits - watermark) = dec;
        watermark += InputBits;
      }
      if (cnt != sz)
        return bad_input(es, "premature EOF", pos + cnt);
      pos += cnt;
      stream_into(os);
    }
    return 0;
  }

private:

  auto bad_input(std::ostream &es, std::string const &kind, size_t offset)
  {
    es << "basex: error: " << kind << " at offset " << offset << std::endl;
    return 1;
  }

  auto& stream_into(std::ostream &os)
  {
    for (auto i = 0; (i*OutputBits + OutputBits) <= watermark; i += 1) {
      os.put(
        slice<OutputBits>(data, BitSize - OutputBits - (i*OutputBits))
      . copy()
      . to_ulong()
      );
    }
    data.reset();
    watermark = 0;
    return os;
  }

  size_t watermark;
  Base base;
  Data data;
};
