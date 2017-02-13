  $ . "$TESTDIR/setup"


  $ base64ufs </dev/null

  $ printf f | base64ufs
  Zg== (no-eol)

  $ printf fo | base64ufs
  Zm8= (no-eol)

  $ printf foo | base64ufs
  Zm9v (no-eol)

  $ printf foob | base64ufs
  Zm9vYg== (no-eol)

  $ printf fooba | base64ufs
  Zm9vYmE= (no-eol)

  $ printf foobar | base64ufs
  Zm9vYmFy (no-eol)
