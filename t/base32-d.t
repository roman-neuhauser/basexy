  $ . "$TESTDIR/setup"


  $ basexy -d base32 </dev/null

  $ printf MY====== | basexy -d base32
  f (no-eol)

  $ printf MZXQ==== | basexy -d base32
  fo (no-eol)

  $ printf MZXW6=== | basexy -d base32
  foo (no-eol)

  $ printf MZXW6YQ= | basexy -d base32
  foob (no-eol)

  $ printf MZXW6YTB | basexy -d base32
  fooba (no-eol)

  $ printf MZXW6YTBOI====== | basexy -d base32
  foobar (no-eol)
