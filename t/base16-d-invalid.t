Inputs yielding "invalid input" errors
======================================

setup::

  $ . "$TESTDIR/setup"

  $ decode()
  > {
  >   printf -- "$1" | basex -d base16 2>errors
  > }


test::

  $ decode Z
  [1]
  $ cat errors
  basex: error: invalid input at offset 0

  $ decode ZA
  [1]
  $ cat errors
  basex: error: invalid input at offset 0

  $ decode AZ
  [1]
  $ cat errors
  basex: error: invalid input at offset 1

  $ decode 666Z
  f (no-eol)
  [1]
  $ cat errors
  basex: error: invalid input at offset 3

  $ decode 666FZF
  fo (no-eol)
  [1]
  $ cat errors
  basex: error: invalid input at offset 4

  $ decode 666F6Z
  fo (no-eol)
  [1]
  $ cat errors
  basex: error: invalid input at offset 5
