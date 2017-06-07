// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#include <cstring>
#include <iostream>

#include "boost/format.hpp"

#include "basex/decoder.hpp"
#include "basex/encoder.hpp"

#include "basex/base16.hpp"
#include "basex/base32.hpp"
#include "basex/base32hex.hpp"
#include "basex/base64.hpp"
#include "basex/base64ufs.hpp"

enum Operation { encode, decode };

struct Errors // {{{
{
  Errors(std::ostream &os, std::string const &self)
  : os(os)
  , self(self)
  {}
private:
  std::ostream &os;
  std::string const &self;

  auto fmt(char const *fmt)
  {
    return boost::format(fmt);
  }
public:
  auto usage()
  {
    os << fmt(
      "%1%: usage: %1% -h\n"
      "%1%: usage: %1% [-d|-e] BASE\n"
    ) % self;
    return 0;
  }
  auto bad_option(char optname)
  {
    os << fmt(
      "%1$s: error: unknown option '-%2$c'\n"
    ) % self % optname;
    usage();
    return 100;
  }
  auto missing_operand()
  {
    os << fmt(
      "%1$s: error: missing operand BASE\n"
    ) % self;
    usage();
    return 100;
  }
  auto unknown_base(std::string const &prog)
  {
    os << fmt(
      "%1$s: error: unknown BASE '%2$s'\n"
    ) % self % prog;
    return 100;
  }
}; // }}}


int
main(int argc, char **argv) // {{{
{
  Operation mode = encode;
  std::string self = *argv;

  Errors errors(std::cerr, self);
  int opt;
  while ((opt = getopt(argc, argv, ":deh")) != -1) {
    switch (opt) {
    case 'd':
      mode = decode;
      break;
    case 'e':
      mode = encode;
      break;
    case 'h':
      return errors.usage();
    default:
      return errors.bad_option(optopt);
    }
  }
  argc -= optind;
  argv += optind;

  if (argc == 0)
    return errors.missing_operand();

  std::string base = argv[0];

#define dispatch_(mode_, base_) \
  if (mode == mode_) \
    return mode_ ## r<base_>()

#define dispatch(basename_, base_, ...) \
  do { \
    if (base != basename_) break; \
    dispatch_(encode, base_)(__VA_ARGS__); \
    dispatch_(decode, base_)(__VA_ARGS__); \
  } while (0)

  dispatch("base16",    b16,    std::cin, std::cout, std::cerr);
  dispatch("base32",    b32,    std::cin, std::cout, std::cerr);
  dispatch("base32hex", b32hex, std::cin, std::cout, std::cerr);
  dispatch("base64",    b64,    std::cin, std::cout, std::cerr);
  dispatch("base64ufs", b64ufs, std::cin, std::cout, std::cerr);

  return errors.unknown_base(argv[0]);
} // }}}
