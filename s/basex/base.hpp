// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <cstddef>
#include <cstring>


template <typename Base>
struct base : Base
{
  using Base::alphabet;
  base()
  : Base()
  {
    for (size_t i = 0; i < strlen(alphabet); ++i)
      ralphabet[static_cast<size_t>(alphabet[i])] = i;
  }
  size_t ralphabet[255];
  char encode(unsigned long val)
  {
    return alphabet[val];
  }
  char decode(unsigned long val)
  {
    return ralphabet[val];
  }
};
