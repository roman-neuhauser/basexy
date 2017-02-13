  $ . "$TESTDIR/setup"


  $ base64 </dev/null

  $ printf f | base64
  Zg== (no-eol)

  $ printf fo | base64
  Zm8= (no-eol)

  $ printf foo | base64
  Zm9v (no-eol)

  $ printf foob | base64
  Zm9vYg== (no-eol)

  $ printf fooba | base64
  Zm9vYmE= (no-eol)

  $ printf foobar | base64
  Zm9vYmFy (no-eol)
