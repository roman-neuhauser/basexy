// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>
#include <cstring>

struct b64ufs
{
  constexpr static size_t block_size = 24;
  constexpr static size_t encoded_bits = 6;
  constexpr static size_t decoded_bits = 8;
  constexpr static char const * alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
  char encode(unsigned long val)
  {
    return alphabet[val];
  }
  char decode(unsigned long val)
  {
    return std::strchr(alphabet, val) - alphabet;
  }
};

