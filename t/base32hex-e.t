  $ . "$TESTDIR/setup"


  $ base32hex -e </dev/null

  $ printf f | base32hex -e
  CO====== (no-eol)

  $ printf fo | base32hex -e
  CPNG==== (no-eol)

  $ printf foo | base32hex -e
  CPNMU=== (no-eol)

  $ printf foob | base32hex -e
  CPNMUOG= (no-eol)

  $ printf fooba | base32hex -e
  CPNMUOJ1 (no-eol)

  $ printf foobar | base32hex -e
  CPNMUOJ1E8====== (no-eol)
