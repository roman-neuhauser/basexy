  $ . "$TESTDIR/setup"


  $ basexy -d base16 </dev/null

  $ printf 666F6F626172 | basexy -d base16
  foobar (no-eol)

  $ printf MZXW6YTBOI====== | basexy -d base32
  foobar (no-eol)

  $ printf CPNMUOJ1E8====== | basexy -d base32hex
  foobar (no-eol)

  $ printf Zm9vYmFy | basexy -d base64
  foobar (no-eol)

  $ printf Zm9vYmFy | basexy -d base64ufs
  foobar (no-eol)
