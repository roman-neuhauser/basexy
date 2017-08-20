  $ . "$TESTDIR/setup"


  $ basexy
  basexy: error: missing operand BASE
  basexy: usage: basexy -h
  basexy: usage: basexy [-d|-e] BASE
  [100]

  $ basexy -j
  basexy: error: unknown option '-j'
  basexy: usage: basexy -h
  basexy: usage: basexy [-d|-e] BASE
  [100]

  $ basexy foo
  basexy: error: unknown BASE 'foo'
  [100]
