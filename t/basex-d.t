  $ . "$TESTDIR/setup"


  $ basex -d base16 </dev/null

  $ printf 666F6F626172 | basex -d base16
  foobar (no-eol)

  $ printf MZXW6YTBOI====== | basex -d base32
  foobar (no-eol)

  $ printf CPNMUOJ1E8====== | basex -d base32hex
  foobar (no-eol)

  $ printf Zm9vYmFy | basex -d base64
  foobar (no-eol)

  $ printf Zm9vYmFy | basex -d base64ufs
  foobar (no-eol)
