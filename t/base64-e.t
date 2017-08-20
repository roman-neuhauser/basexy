  $ . "$TESTDIR/setup"


  $ basexy -e base64 </dev/null

  $ printf f | basexy -e base64
  Zg== (no-eol)

  $ printf fo | basexy -e base64
  Zm8= (no-eol)

  $ printf foo | basexy -e base64
  Zm9v (no-eol)

  $ printf foob | basexy -e base64
  Zm9vYg== (no-eol)

  $ printf fooba | basexy -e base64
  Zm9vYmE= (no-eol)

  $ printf foobar | basexy -e base64
  Zm9vYmFy (no-eol)
