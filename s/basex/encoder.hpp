// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <bitset>
#include <climits>
#include "slice.hpp"


template <
  typename Base
, typename Data = std::bitset<Base::block_size>
, size_t InputBits = Base::decoded_bits
, size_t OutputBits = Base::encoded_bits
, size_t BitSize = Base::block_size
>
struct encoder
{
  encoder()
  : watermark(0)
  , base()
  {}

  auto operator()(std::istream &is, std::ostream &os)
  {
    auto sz = BitSize / CHAR_BIT;
    char buf[sz];
    while (is.good()) {
      is.read(buf, sz);
      auto cnt = is.gcount();
      for (auto i = 0; i < cnt; ++i)
        push(buf[i]);
      stream_into(os);
    }
  }

private:

  auto push(uint8_t c)
  {
    slice<InputBits>(data, BitSize - InputBits - watermark) = c;
    watermark += InputBits;
  }

  auto& stream_into(std::ostream &os)
  {
    for (size_t i = 0; (i*OutputBits) < watermark; i += 1)
      os.put(base.encode(
        slice<OutputBits>(data, BitSize - OutputBits - (i*OutputBits))
      . copy()
      . to_ulong()
      ));
    if (0 < watermark && watermark < BitSize)
      for (size_t i = 0; i < (BitSize - watermark) / OutputBits; ++i)
        os.put('=');
    data.reset();
    watermark = 0;
    return os;
  }

  size_t watermark;
  Base base;
  Data data;
};
