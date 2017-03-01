  $ . "$TESTDIR/setup"


  $ basex
  basex: error: missing operand BASE
  basex: usage: basex -h
  basex: usage: basex [-d|-e] BASE
  [100]

  $ basex -j
  basex: error: unknown option '-j'
  basex: usage: basex -h
  basex: usage: basex [-d|-e] BASE
  [100]

  $ basex foo
  basex: error: nonexistent or not executable: basex-foo
  [100]
