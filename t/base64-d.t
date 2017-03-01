  $ . "$TESTDIR/setup"


  $ basex-base64 -d </dev/null

  $ printf Zg== | basex-base64 -d
  f (no-eol)

  $ printf Zm8= | basex-base64 -d
  fo (no-eol)

  $ printf Zm9v | basex-base64 -d
  foo (no-eol)

  $ printf Zm9vYg== | basex-base64 -d
  foob (no-eol)

  $ printf Zm9vYmE= | basex-base64 -d
  fooba (no-eol)

  $ printf Zm9vYmFy | basex-base64 -d
  foobar (no-eol)
