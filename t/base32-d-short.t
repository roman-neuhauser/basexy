Inputs yielding "premature EOF" errors
======================================

setup::

  $ . "$TESTDIR/setup"

  $ decode()
  > {
  >   printf -- "$1" | basex -d base32 2>errors
  > }


test::

  $ decode M
  [1]
  $ cat errors
  basex: error: premature EOF at offset 1

  $ decode MY
  [1]
  $ cat errors
  basex: error: premature EOF at offset 2

  $ decode MY=
  [1]
  $ cat errors
  basex: error: premature EOF at offset 3

  $ decode MY====
  [1]
  $ cat errors
  basex: error: premature EOF at offset 6

  $ decode MY=====
  [1]
  $ cat errors
  basex: error: premature EOF at offset 7

  $ decode MZXW6YTBOI=====
  fooba (no-eol)
  [1]
  $ cat errors
  basex: error: premature EOF at offset 15
