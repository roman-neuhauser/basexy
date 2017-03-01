  $ . "$TESTDIR/setup"


  $ basex-base32 -e </dev/null

  $ printf f | basex-base32 -e
  MY====== (no-eol)

  $ printf fo | basex-base32 -e
  MZXQ==== (no-eol)

  $ printf foo | basex-base32 -e
  MZXW6=== (no-eol)

  $ printf foob | basex-base32 -e
  MZXW6YQ= (no-eol)

  $ printf fooba | basex-base32 -e
  MZXW6YTB (no-eol)

  $ printf foobar | basex-base32 -e
  MZXW6YTBOI====== (no-eol)
