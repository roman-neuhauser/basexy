  $ . "$TESTDIR/setup"


  $ basex -d base64 </dev/null

  $ printf Zg== | basex -d base64
  f (no-eol)

  $ printf Zm8= | basex -d base64
  fo (no-eol)

  $ printf Zm9v | basex -d base64
  foo (no-eol)

  $ printf Zm9vYg== | basex -d base64
  foob (no-eol)

  $ printf Zm9vYmE= | basex -d base64
  fooba (no-eol)

  $ printf Zm9vYmFy | basex -d base64
  foobar (no-eol)
