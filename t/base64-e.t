  $ . "$TESTDIR/setup"


  $ base64 -e </dev/null

  $ printf f | base64 -e
  Zg== (no-eol)

  $ printf fo | base64 -e
  Zm8= (no-eol)

  $ printf foo | base64 -e
  Zm9v (no-eol)

  $ printf foob | base64 -e
  Zm9vYg== (no-eol)

  $ printf fooba | base64 -e
  Zm9vYmE= (no-eol)

  $ printf foobar | base64 -e
  Zm9vYmFy (no-eol)
