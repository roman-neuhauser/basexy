Inputs yielding "invalid input" errors
======================================

setup::

  $ . "$TESTDIR/setup"

  $ decode()
  > {
  >   printf -- "$1" | basexy -d base64 2>errors
  > }


test: less than a block::

  $ decode .
  [1]
  $ cat errors
  basexy: error: invalid input at offset 0

  $ decode A.
  [1]
  $ cat errors
  basexy: error: invalid input at offset 1

  $ decode Zg=.
  [1]
  $ cat errors
  basexy: error: invalid input at offset 3


test: exactly one block::

  $ decode .g==
  [1]
  $ cat errors
  basexy: error: invalid input at offset 0

  $ decode Z.==
  [1]
  $ cat errors
  basexy: error: invalid input at offset 1

  $ decode Zg.=
  [1]
  $ cat errors
  basexy: error: invalid input at offset 2

  $ decode Zg=.
  [1]
  $ cat errors
  basexy: error: invalid input at offset 3

  $ decode Zm8.
  [1]
  $ cat errors
  basexy: error: invalid input at offset 3

  $ decode =Zm8
  [1]
  $ cat errors
  basexy: error: invalid input at offset 1


test: block boundary::

  $ decode Zm9.Yg==
  [1]
  $ cat errors
  basexy: error: invalid input at offset 3

  $ decode Zm9v.mE=
  foo (no-eol)
  [1]
  $ cat errors
  basexy: error: invalid input at offset 4

  $ decode Zm9vYmF.
  foo (no-eol)
  [1]
  $ cat errors
  basexy: error: invalid input at offset 7

  $ decode .m9vYmFy
  [1]
  $ cat errors
  basexy: error: invalid input at offset 0
