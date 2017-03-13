  $ . "$TESTDIR/setup"


  $ basex -e base32hex </dev/null

  $ printf f | basex -e base32hex
  CO====== (no-eol)

  $ printf fo | basex -e base32hex
  CPNG==== (no-eol)

  $ printf foo | basex -e base32hex
  CPNMU=== (no-eol)

  $ printf foob | basex -e base32hex
  CPNMUOG= (no-eol)

  $ printf fooba | basex -e base32hex
  CPNMUOJ1 (no-eol)

  $ printf foobar | basex -e base32hex
  CPNMUOJ1E8====== (no-eol)
