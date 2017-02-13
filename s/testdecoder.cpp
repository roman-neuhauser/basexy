// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#include <bitset>
#include <iomanip>
#include <iostream>
#include <sstream>

#include "basex/base16.hpp"
#include "basex/base32.hpp"
#include "basex/base32hex.hpp"
#include "basex/base64.hpp"
#include "basex/base64ufs.hpp"
#include "basex/base256.hpp"

#include "basex/decoder.hpp"

#include "testxxcoder.hpp"

int
main()
{
# define test(base, in, out) test_<decoder<base>>(#base, in, out)

  test(b256, "", "");
  test(b256, "f", "f");
  test(b256, "fo", "fo");
  test(b256, "foo", "foo");
  test(b256, "foob", "foob");
  test(b256, "fooba", "fooba");
  test(b256, "foobar", "foobar");

  test(b16, "", "");
  test(b16, "66", "f");
  test(b16, "666F", "fo");
  test(b16, "666F6F", "foo");
  test(b16, "666F6F62", "foob");
  test(b16, "666F6F6261", "fooba");
  test(b16, "666F6F626172", "foobar");

  test(b32, "", "");
  test(b32, "MY======", "f");
  test(b32, "MZXQ====", "fo");
  test(b32, "MZXW6===", "foo");
  test(b32, "MZXW6YQ=", "foob");
  test(b32, "MZXW6YTB", "fooba");
  test(b32, "MZXW6YTBOI======", "foobar");

  test(b32hex, "", "");
  test(b32hex, "CO======", "f");
  test(b32hex, "CPNG====", "fo");
  test(b32hex, "CPNMU===", "foo");
  test(b32hex, "CPNMUOG=", "foob");
  test(b32hex, "CPNMUOJ1", "fooba");
  test(b32hex, "CPNMUOJ1E8======", "foobar");

  test(b64, "", "");
  test(b64, "Zg==", "f");
  test(b64, "Zm8=", "fo");
  test(b64, "Zm9v", "foo");
  test(b64, "Zm9vYg==", "foob");
  test(b64, "Zm9vYmE=", "fooba");
  test(b64, "Zm9vYmFy", "foobar");

  test(b64ufs, "", "");
  test(b64ufs, "Zg==", "f");
  test(b64ufs, "Zm8=", "fo");
  test(b64ufs, "Zm9v", "foo");
  test(b64ufs, "Zm9vYg==", "foob");
  test(b64ufs, "Zm9vYmE=", "fooba");
  test(b64ufs, "Zm9vYmFy", "foobar");
}
