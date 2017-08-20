  $ . "$TESTDIR/setup"


  $ basexy base32hex </dev/null

  $ printf f | basexy base32hex
  CO====== (no-eol)

  $ printf fo | basexy base32hex
  CPNG==== (no-eol)

  $ printf foo | basexy base32hex
  CPNMU=== (no-eol)

  $ printf foob | basexy base32hex
  CPNMUOG= (no-eol)

  $ printf fooba | basexy base32hex
  CPNMUOJ1 (no-eol)

  $ printf foobar | basexy base32hex
  CPNMUOJ1E8====== (no-eol)
