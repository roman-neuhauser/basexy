Inputs yielding "invalid input" errors
======================================

setup::

  $ . "$TESTDIR/setup"

  $ decode()
  > {
  >   printf -- "$1" | basexy -d base32 2>errors
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

  $ decode MY====.
  [1]
  $ cat errors
  basexy: error: invalid input at offset 6


test: exactly one block::

  $ decode MY.=====
  [1]
  $ cat errors
  basexy: error: invalid input at offset 2

  $ decode MZ.Q====
  [1]
  $ cat errors
  basexy: error: invalid input at offset 2

  $ decode MZX.====
  [1]
  $ cat errors
  basexy: error: invalid input at offset 3

  $ decode MZXW.===
  [1]
  $ cat errors
  basexy: error: invalid input at offset 4

  $ decode MZX.6===
  [1]
  $ cat errors
  basexy: error: invalid input at offset 3

  $ decode MZXW6.Q=
  [1]
  $ cat errors
  basexy: error: invalid input at offset 5

  $ decode MZXW6Y.B
  [1]
  $ cat errors
  basexy: error: invalid input at offset 6

  $ decode MY=====.
  [1]
  $ cat errors
  basexy: error: invalid input at offset 7


test: block boundary::

  $ decode MZXW6YTB.I======
  fooba (no-eol)
  [1]
  $ cat errors
  basexy: error: invalid input at offset 8

  $ decode MZXW6YTBO.======
  fooba (no-eol)
  [1]
  $ cat errors
  basexy: error: invalid input at offset 9
