  $ . "$TESTDIR/setup"


  $ base64ufs -d </dev/null

  $ printf Zg== | base64ufs -d
  f (no-eol)

  $ printf Zm8= | base64ufs -d
  fo (no-eol)

  $ printf Zm9v | base64ufs -d
  foo (no-eol)

  $ printf Zm9vYg== | base64ufs -d
  foob (no-eol)

  $ printf Zm9vYmE= | base64ufs -d
  fooba (no-eol)

  $ printf Zm9vYmFy | base64ufs -d
  foobar (no-eol)
