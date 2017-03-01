  $ . "$TESTDIR/setup"


  $ basex-base64ufs </dev/null

  $ printf f | basex-base64ufs
  Zg== (no-eol)

  $ printf fo | basex-base64ufs
  Zm8= (no-eol)

  $ printf foo | basex-base64ufs
  Zm9v (no-eol)

  $ printf foob | basex-base64ufs
  Zm9vYg== (no-eol)

  $ printf fooba | basex-base64ufs
  Zm9vYmE= (no-eol)

  $ printf foobar | basex-base64ufs
  Zm9vYmFy (no-eol)
