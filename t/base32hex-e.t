  $ . "$TESTDIR/setup"


  $ basex-base32hex -e </dev/null

  $ printf f | basex-base32hex -e
  CO====== (no-eol)

  $ printf fo | basex-base32hex -e
  CPNG==== (no-eol)

  $ printf foo | basex-base32hex -e
  CPNMU=== (no-eol)

  $ printf foob | basex-base32hex -e
  CPNMUOG= (no-eol)

  $ printf fooba | basex-base32hex -e
  CPNMUOJ1 (no-eol)

  $ printf foobar | basex-base32hex -e
  CPNMUOJ1E8====== (no-eol)
