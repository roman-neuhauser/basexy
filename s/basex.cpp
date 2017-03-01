// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#include <cstring>
#include <iostream>

#include "boost/format.hpp"


enum Base { b16, b32, b32hex, b64, b64ufs };

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
  auto not_executable(std::string const &prog)
  {
    os << fmt(
      "%1$s: error: nonexistent or not executable: %2$s\n"
    ) % self % prog;
    return 100;
  }
}; // }}}


auto str_leak(std::string const &src) // {{{
{
  auto size = src.size();
  char *dst = new char[size + 1];
  src.copy(dst, size, 0);
  dst[size] = '\0';
  return dst;
} // }}}

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

  char *nargv[] = {
    str_leak(std::string("basex-") + argv[0])
  , str_leak(mode == decode ? "-d" : "-e")
  , NULL
  };

  execvp(nargv[0], nargv);

  return errors.not_executable(nargv[0]);
} // }}}
