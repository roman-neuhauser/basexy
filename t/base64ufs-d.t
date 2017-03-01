  $ . "$TESTDIR/setup"


  $ basex-base64ufs -d </dev/null

  $ printf Zg== | basex-base64ufs -d
  f (no-eol)

  $ printf Zm8= | basex-base64ufs -d
  fo (no-eol)

  $ printf Zm9v | basex-base64ufs -d
  foo (no-eol)

  $ printf Zm9vYg== | basex-base64ufs -d
  foob (no-eol)

  $ printf Zm9vYmE= | basex-base64ufs -d
  fooba (no-eol)

  $ printf Zm9vYmFy | basex-base64ufs -d
  foobar (no-eol)
