// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

template <typename Codec>
auto test_(char const *base, char const *input, char const *output)
{
  std::istringstream is(input);
  std::ostringstream os;
  std::ostringstream errors;
  Codec tool;
  tool(is, os, errors);
  if (os.str() == output) {
    std::cout << "ok " << base << " " << std::quoted(input) << std::endl;
  } else {
    std::cout << "FAIL " << base << " " << std::quoted(input) << " got " << std::quoted(os.str()) << std::endl;
  }
}
