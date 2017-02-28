// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>
#include <cstring>

struct b32
{
  constexpr static size_t block_size = 40;
  constexpr static size_t encoded_bits = 5;
  constexpr static size_t decoded_bits = 8;
  constexpr static char const * alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
  char encode(unsigned long val)
  {
    return alphabet[val];
  }
  char decode(unsigned long val)
  {
    return std::strchr(alphabet, val) - alphabet;
  }
};

