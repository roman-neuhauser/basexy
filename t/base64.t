  $ . "$TESTDIR/setup"


  $ basex base64 </dev/null

  $ printf f | basex base64
  Zg== (no-eol)

  $ printf fo | basex base64
  Zm8= (no-eol)

  $ printf foo | basex base64
  Zm9v (no-eol)

  $ printf foob | basex base64
  Zm9vYg== (no-eol)

  $ printf fooba | basex base64
  Zm9vYmE= (no-eol)

  $ printf foobar | basex base64
  Zm9vYmFy (no-eol)
