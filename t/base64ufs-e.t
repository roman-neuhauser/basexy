  $ . "$TESTDIR/setup"


  $ basex -e base64ufs </dev/null

  $ printf f | basex -e base64ufs
  Zg== (no-eol)

  $ printf fo | basex -e base64ufs
  Zm8= (no-eol)

  $ printf foo | basex -e base64ufs
  Zm9v (no-eol)

  $ printf foob | basex -e base64ufs
  Zm9vYg== (no-eol)

  $ printf fooba | basex -e base64ufs
  Zm9vYmE= (no-eol)

  $ printf foobar | basex -e base64ufs
  Zm9vYmFy (no-eol)
