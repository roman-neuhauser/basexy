  $ . "$TESTDIR/setup"


  $ basex-base32 </dev/null

  $ printf f | basex-base32
  MY====== (no-eol)

  $ printf fo | basex-base32
  MZXQ==== (no-eol)

  $ printf foo | basex-base32
  MZXW6=== (no-eol)

  $ printf foob | basex-base32
  MZXW6YQ= (no-eol)

  $ printf fooba | basex-base32
  MZXW6YTB (no-eol)

  $ printf foobar | basex-base32
  MZXW6YTBOI====== (no-eol)
