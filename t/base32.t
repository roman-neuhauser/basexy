  $ . "$TESTDIR/setup"


  $ base32 </dev/null

  $ printf f | base32
  MY====== (no-eol)

  $ printf fo | base32
  MZXQ==== (no-eol)

  $ printf foo | base32
  MZXW6=== (no-eol)

  $ printf foob | base32
  MZXW6YQ= (no-eol)

  $ printf fooba | base32
  MZXW6YTB (no-eol)

  $ printf foobar | base32
  MZXW6YTBOI====== (no-eol)
