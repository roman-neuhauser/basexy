  $ . "$TESTDIR/setup"


  $ base32 -d </dev/null

  $ printf MY====== | base32 -d
  f (no-eol)

  $ printf MZXQ==== | base32 -d
  fo (no-eol)

  $ printf MZXW6=== | base32 -d
  foo (no-eol)

  $ printf MZXW6YQ= | base32 -d
  foob (no-eol)

  $ printf MZXW6YTB | base32 -d
  fooba (no-eol)

  $ printf MZXW6YTBOI====== | base32 -d
  foobar (no-eol)
