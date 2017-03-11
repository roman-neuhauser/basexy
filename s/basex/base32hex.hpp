// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>

#include "base.hpp"


struct b32hex_
{
  constexpr static size_t block_size = 40;
  constexpr static size_t encoded_bits = 5;
  constexpr static size_t decoded_bits = 8;
  constexpr static char const * alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUV";
};

using b32hex = base<b32hex_>;
