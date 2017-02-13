  $ . "$TESTDIR/setup"


  $ base64ufs -e </dev/null

  $ printf f | base64ufs -e
  Zg== (no-eol)

  $ printf fo | base64ufs -e
  Zm8= (no-eol)

  $ printf foo | base64ufs -e
  Zm9v (no-eol)

  $ printf foob | base64ufs -e
  Zm9vYg== (no-eol)

  $ printf fooba | base64ufs -e
  Zm9vYmE= (no-eol)

  $ printf foobar | base64ufs -e
  Zm9vYmFy (no-eol)
