  $ . "$TESTDIR/setup"


  $ basex-base32 -d </dev/null

  $ printf MY====== | basex-base32 -d
  f (no-eol)

  $ printf MZXQ==== | basex-base32 -d
  fo (no-eol)

  $ printf MZXW6=== | basex-base32 -d
  foo (no-eol)

  $ printf MZXW6YQ= | basex-base32 -d
  foob (no-eol)

  $ printf MZXW6YTB | basex-base32 -d
  fooba (no-eol)

  $ printf MZXW6YTBOI====== | basex-base32 -d
  foobar (no-eol)
