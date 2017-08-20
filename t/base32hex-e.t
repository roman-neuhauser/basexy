  $ . "$TESTDIR/setup"


  $ basexy -e base32hex </dev/null

  $ printf f | basexy -e base32hex
  CO====== (no-eol)

  $ printf fo | basexy -e base32hex
  CPNG==== (no-eol)

  $ printf foo | basexy -e base32hex
  CPNMU=== (no-eol)

  $ printf foob | basexy -e base32hex
  CPNMUOG= (no-eol)

  $ printf fooba | basexy -e base32hex
  CPNMUOJ1 (no-eol)

  $ printf foobar | basexy -e base32hex
  CPNMUOJ1E8====== (no-eol)
