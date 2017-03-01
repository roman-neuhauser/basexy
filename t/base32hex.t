  $ . "$TESTDIR/setup"


  $ basex-base32hex </dev/null

  $ printf f | basex-base32hex
  CO====== (no-eol)

  $ printf fo | basex-base32hex
  CPNG==== (no-eol)

  $ printf foo | basex-base32hex
  CPNMU=== (no-eol)

  $ printf foob | basex-base32hex
  CPNMUOG= (no-eol)

  $ printf fooba | basex-base32hex
  CPNMUOJ1 (no-eol)

  $ printf foobar | basex-base32hex
  CPNMUOJ1E8====== (no-eol)
