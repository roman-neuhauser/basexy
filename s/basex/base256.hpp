// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>

struct b256
{
  constexpr static size_t const block_size = 8;
  constexpr static size_t const encoded_bits = 8;
  constexpr static size_t const decoded_bits = 8;
  char encode(unsigned long val)
  {
    return val;
  }
  char decode(unsigned long val)
  {
    return val;
  }
};

