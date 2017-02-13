// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <bitset>
#include <climits>
#include <cstdlib>
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

  auto operator()(std::istream &is, std::ostream &os)
  {
    auto sz = BitSize / InputBits;
    char buf[sz];
    while (is.good()) {
      is.read(buf, sz);
      auto cnt = is.gcount();
      for (auto i = 0; i < cnt; ++i) {
        if (buf[i] == '=') break;
        push(buf[i]);
      }
      stream_into(os);
    }
  }

private:

  auto push(uint8_t c)
  {
    slice<InputBits>(data, BitSize - InputBits - watermark) = base.decode(c);
    watermark += InputBits;
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
