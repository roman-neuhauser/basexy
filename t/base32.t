  $ . "$TESTDIR/setup"


  $ basexy base32 </dev/null

  $ printf f | basexy base32
  MY====== (no-eol)

  $ printf fo | basexy base32
  MZXQ==== (no-eol)

  $ printf foo | basexy base32
  MZXW6=== (no-eol)

  $ printf foob | basexy base32
  MZXW6YQ= (no-eol)

  $ printf fooba | basexy base32
  MZXW6YTB (no-eol)

  $ printf foobar | basexy base32
  MZXW6YTBOI====== (no-eol)
