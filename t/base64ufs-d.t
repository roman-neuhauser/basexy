  $ . "$TESTDIR/setup"


  $ basexy -d base64ufs </dev/null

  $ printf Zg== | basexy -d base64ufs
  f (no-eol)

  $ printf Zm8= | basexy -d base64ufs
  fo (no-eol)

  $ printf Zm9v | basexy -d base64ufs
  foo (no-eol)

  $ printf Zm9vYg== | basexy -d base64ufs
  foob (no-eol)

  $ printf Zm9vYmE= | basexy -d base64ufs
  fooba (no-eol)

  $ printf Zm9vYmFy | basexy -d base64ufs
  foobar (no-eol)
