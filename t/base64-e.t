  $ . "$TESTDIR/setup"


  $ basex-base64 -e </dev/null

  $ printf f | basex-base64 -e
  Zg== (no-eol)

  $ printf fo | basex-base64 -e
  Zm8= (no-eol)

  $ printf foo | basex-base64 -e
  Zm9v (no-eol)

  $ printf foob | basex-base64 -e
  Zm9vYg== (no-eol)

  $ printf fooba | basex-base64 -e
  Zm9vYmE= (no-eol)

  $ printf foobar | basex-base64 -e
  Zm9vYmFy (no-eol)
