  $ . "$TESTDIR/setup"


  $ basexy -d base64 </dev/null

  $ printf Zg== | basexy -d base64
  f (no-eol)

  $ printf Zm8= | basexy -d base64
  fo (no-eol)

  $ printf Zm9v | basexy -d base64
  foo (no-eol)

  $ printf Zm9vYg== | basexy -d base64
  foob (no-eol)

  $ printf Zm9vYmE= | basexy -d base64
  fooba (no-eol)

  $ printf Zm9vYmFy | basexy -d base64
  foobar (no-eol)
