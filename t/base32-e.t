  $ . "$TESTDIR/setup"


  $ base32 -e </dev/null

  $ printf f | base32 -e
  MY====== (no-eol)

  $ printf fo | base32 -e
  MZXQ==== (no-eol)

  $ printf foo | base32 -e
  MZXW6=== (no-eol)

  $ printf foob | base32 -e
  MZXW6YQ= (no-eol)

  $ printf fooba | base32 -e
  MZXW6YTB (no-eol)

  $ printf foobar | base32 -e
  MZXW6YTBOI====== (no-eol)
