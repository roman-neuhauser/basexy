// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#include <bitset>
#include <iomanip>
#include <iostream>
#include <sstream>

#include "basexy/base16.hpp"
#include "basexy/base32.hpp"
#include "basexy/base32hex.hpp"
#include "basexy/base64.hpp"
#include "basexy/base64ufs.hpp"
#include "basexy/base256.hpp"

#include "basexy/encoder.hpp"

#include "testxxcoder.hpp"

int
main()
{
# define test(base, in, out) test_<encoder<base>>(#base, in, out)

  test(b256, "", "");
  test(b256, "f", "f");
  test(b256, "fo", "fo");
  test(b256, "foo", "foo");
  test(b256, "foob", "foob");
  test(b256, "fooba", "fooba");
  test(b256, "foobar", "foobar");

  test(b16, "", "");
  test(b16, "f", "66");
  test(b16, "fo", "666F");
  test(b16, "foo", "666F6F");
  test(b16, "foob", "666F6F62");
  test(b16, "fooba", "666F6F6261");
  test(b16, "foobar", "666F6F626172");

  test(b32, "", "");
  test(b32, "f", "MY======");
  test(b32, "fo", "MZXQ====");
  test(b32, "foo", "MZXW6===");
  test(b32, "foob", "MZXW6YQ=");
  test(b32, "fooba", "MZXW6YTB");
  test(b32, "foobar", "MZXW6YTBOI======");

  test(b32hex, "", "");
  test(b32hex, "f", "CO======");
  test(b32hex, "fo", "CPNG====");
  test(b32hex, "foo", "CPNMU===");
  test(b32hex, "foob", "CPNMUOG=");
  test(b32hex, "fooba", "CPNMUOJ1");
  test(b32hex, "foobar", "CPNMUOJ1E8======");

  test(b64, "", "");
  test(b64, "f", "Zg==");
  test(b64, "fo", "Zm8=");
  test(b64, "foo", "Zm9v");
  test(b64, "foob", "Zm9vYg==");
  test(b64, "fooba", "Zm9vYmE=");
  test(b64, "foobar", "Zm9vYmFy");

  test(b64ufs, "", "");
  test(b64ufs, "f", "Zg==");
  test(b64ufs, "fo", "Zm8=");
  test(b64ufs, "foo", "Zm9v");
  test(b64ufs, "foob", "Zm9vYg==");
  test(b64ufs, "fooba", "Zm9vYmE=");
  test(b64ufs, "foobar", "Zm9vYmFy");
}
