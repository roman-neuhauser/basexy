  $ . "$TESTDIR/setup"


  $ basex-base32hex -d </dev/null

  $ printf CO====== | basex-base32hex -d
  f (no-eol)

  $ printf CPNG==== | basex-base32hex -d
  fo (no-eol)

  $ printf CPNMU=== | basex-base32hex -d
  foo (no-eol)

  $ printf CPNMUOG= | basex-base32hex -d
  foob (no-eol)

  $ printf CPNMUOJ1 | basex-base32hex -d
  fooba (no-eol)

  $ printf CPNMUOJ1E8====== | basex-base32hex -d
  foobar (no-eol)
