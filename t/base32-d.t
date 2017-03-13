  $ . "$TESTDIR/setup"


  $ basex -d base32 </dev/null

  $ printf MY====== | basex -d base32
  f (no-eol)

  $ printf MZXQ==== | basex -d base32
  fo (no-eol)

  $ printf MZXW6=== | basex -d base32
  foo (no-eol)

  $ printf MZXW6YQ= | basex -d base32
  foob (no-eol)

  $ printf MZXW6YTB | basex -d base32
  fooba (no-eol)

  $ printf MZXW6YTBOI====== | basex -d base32
  foobar (no-eol)
