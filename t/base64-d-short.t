Inputs yielding "premature EOF" errors
======================================

setup::

  $ . "$TESTDIR/setup"

  $ decode()
  > {
  >   printf -- "$1" | basexy -d base64 2>errors
  > }


test::

  $ decode Z
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 1

  $ decode Zg
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 2

  $ decode Zg=
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 3

  $ decode Zm8
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 3

  $ decode =
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 1

  $ decode ==
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 2

  $ decode ===
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 3

  $ decode =====
  [1]
  $ cat errors
  basexy: error: premature EOF at offset 5
