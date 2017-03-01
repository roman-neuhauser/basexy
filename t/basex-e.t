  $ . "$TESTDIR/setup"


  $ basex -e base16 </dev/null

  $ printf foobar | basex -e base16
  666F6F626172 (no-eol)

  $ printf foobar | basex -e base32
  MZXW6YTBOI====== (no-eol)

  $ printf foobar | basex -e base32hex
  CPNMUOJ1E8====== (no-eol)

  $ printf foobar | basex -e base64
  Zm9vYmFy (no-eol)

  $ printf foobar | basex -e base64ufs
  Zm9vYmFy (no-eol)
