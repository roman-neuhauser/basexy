// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <iostream>

#include <unistd.h>
#include "boost/format.hpp"
#include "basex/decoder.hpp"
#include "basex/encoder.hpp"

enum Operation { encode, decode };

char const * const bad_option =
  "%1$s: error: unknown option '-%2$c'\n"
;

char const * const usage_fmt =
  "%1%: usage: %1% -h\n"
  "%1%: usage: %1% [-d|-e]\n"
;

auto usage(char const *cmdname, char opt)
{
  auto ex = opt != 'h';
  if (ex)
    std::cerr << boost::format(bad_option) % cmdname % opt;
  std::cerr << boost::format(usage_fmt) % cmdname;
  return ex;
}

template <typename Base>
int
submain(char const *cmdname, int argc, char **argv)
{
  Operation mode = encode;

  int opt;
  while ((opt = getopt(argc, argv, ":deh")) != -1) {
    switch (opt) {
    case 'd':
      mode = decode;
      break;
    case 'e':
      mode = encode;
      break;
    default:
      return usage(cmdname, optopt);
    }
  }
  argc -= optind;
  argv += optind;

  switch (mode) {
  case decode:
    return decoder<Base>()(std::cin, std::cout);
  case encode:
  default:
    return encoder<Base>()(std::cin, std::cout);
  }

  return 100;
}
