Inputs yielding "premature EOF" errors
======================================

setup::

  $ . "$TESTDIR/setup"

  $ decode()
  > {
  >   printf -- "$1" | basexy -d base16 2>errors
  > }


test::

  $ decode 6
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 1

  $ decode 666
  f (no-eol)
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 3

  $ decode 666F6
  fo (no-eol)
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 5
