// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>

#include "base.hpp"


struct b64ufs_
{
  constexpr static size_t block_size = 24;
  constexpr static size_t encoded_bits = 6;
  constexpr static size_t decoded_bits = 8;
  constexpr static char const * alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
};

using b64ufs = base<b64ufs_>;
