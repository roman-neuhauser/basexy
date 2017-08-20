// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>

#include "base.hpp"


struct b16_
{
  constexpr static size_t block_size = 8;
  constexpr static size_t encoded_bits = 4;
  constexpr static size_t decoded_bits = 8;
  constexpr static char const * alphabet = "0123456789ABCDEF";
};

using b16 = base<b16_>;
