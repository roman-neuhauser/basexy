  $ . "$TESTDIR/setup"


  $ base32hex </dev/null

  $ printf f | base32hex
  CO====== (no-eol)

  $ printf fo | base32hex
  CPNG==== (no-eol)

  $ printf foo | base32hex
  CPNMU=== (no-eol)

  $ printf foob | base32hex
  CPNMUOG= (no-eol)

  $ printf fooba | base32hex
  CPNMUOJ1 (no-eol)

  $ printf foobar | base32hex
  CPNMUOJ1E8====== (no-eol)
