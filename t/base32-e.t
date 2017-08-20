  $ . "$TESTDIR/setup"


  $ basexy -e base32 </dev/null

  $ printf f | basexy -e base32
  MY====== (no-eol)

  $ printf fo | basexy -e base32
  MZXQ==== (no-eol)

  $ printf foo | basexy -e base32
  MZXW6=== (no-eol)

  $ printf foob | basexy -e base32
  MZXW6YQ= (no-eol)

  $ printf fooba | basexy -e base32
  MZXW6YTB (no-eol)

  $ printf foobar | basexy -e base32
  MZXW6YTBOI====== (no-eol)
