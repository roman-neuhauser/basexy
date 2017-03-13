  $ . "$TESTDIR/setup"


  $ basex -d base64ufs </dev/null

  $ printf Zg== | basex -d base64ufs
  f (no-eol)

  $ printf Zm8= | basex -d base64ufs
  fo (no-eol)

  $ printf Zm9v | basex -d base64ufs
  foo (no-eol)

  $ printf Zm9vYg== | basex -d base64ufs
  foob (no-eol)

  $ printf Zm9vYmE= | basex -d base64ufs
  fooba (no-eol)

  $ printf Zm9vYmFy | basex -d base64ufs
  foobar (no-eol)
