  $ . "$TESTDIR/setup"


  $ basex -e base32 </dev/null

  $ printf f | basex -e base32
  MY====== (no-eol)

  $ printf fo | basex -e base32
  MZXQ==== (no-eol)

  $ printf foo | basex -e base32
  MZXW6=== (no-eol)

  $ printf foob | basex -e base32
  MZXW6YQ= (no-eol)

  $ printf fooba | basex -e base32
  MZXW6YTB (no-eol)

  $ printf foobar | basex -e base32
  MZXW6YTBOI====== (no-eol)
