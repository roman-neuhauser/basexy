  $ . "$TESTDIR/setup"


  $ basexy base64ufs </dev/null

  $ printf f | basexy base64ufs
  Zg== (no-eol)

  $ printf fo | basexy base64ufs
  Zm8= (no-eol)

  $ printf foo | basexy base64ufs
  Zm9v (no-eol)

  $ printf foob | basexy base64ufs
  Zm9vYg== (no-eol)

  $ printf fooba | basexy base64ufs
  Zm9vYmE= (no-eol)

  $ printf foobar | basexy base64ufs
  Zm9vYmFy (no-eol)
