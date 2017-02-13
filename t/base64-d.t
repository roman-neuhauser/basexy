  $ . "$TESTDIR/setup"


  $ base64 -d </dev/null

  $ printf Zg== | base64 -d
  f (no-eol)

  $ printf Zm8= | base64 -d
  fo (no-eol)

  $ printf Zm9v | base64 -d
  foo (no-eol)

  $ printf Zm9vYg== | base64 -d
  foob (no-eol)

  $ printf Zm9vYmE= | base64 -d
  fooba (no-eol)

  $ printf Zm9vYmFy | base64 -d
  foobar (no-eol)
