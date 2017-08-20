  $ . "$TESTDIR/setup"


  $ basexy -e base64ufs </dev/null

  $ printf f | basexy -e base64ufs
  Zg== (no-eol)

  $ printf fo | basexy -e base64ufs
  Zm8= (no-eol)

  $ printf foo | basexy -e base64ufs
  Zm9v (no-eol)

  $ printf foob | basexy -e base64ufs
  Zm9vYg== (no-eol)

  $ printf fooba | basexy -e base64ufs
  Zm9vYmE= (no-eol)

  $ printf foobar | basexy -e base64ufs
  Zm9vYmFy (no-eol)
