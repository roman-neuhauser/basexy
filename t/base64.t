  $ . "$TESTDIR/setup"


  $ basexy base64 </dev/null

  $ printf f | basexy base64
  Zg== (no-eol)

  $ printf fo | basexy base64
  Zm8= (no-eol)

  $ printf foo | basexy base64
  Zm9v (no-eol)

  $ printf foob | basexy base64
  Zm9vYg== (no-eol)

  $ printf fooba | basexy base64
  Zm9vYmE= (no-eol)

  $ printf foobar | basexy base64
  Zm9vYmFy (no-eol)
