  $ . "$TESTDIR/setup"


  $ base32hex -d </dev/null

  $ printf CO====== | base32hex -d
  f (no-eol)

  $ printf CPNG==== | base32hex -d
  fo (no-eol)

  $ printf CPNMU=== | base32hex -d
  foo (no-eol)

  $ printf CPNMUOG= | base32hex -d
  foob (no-eol)

  $ printf CPNMUOJ1 | base32hex -d
  fooba (no-eol)

  $ printf CPNMUOJ1E8====== | base32hex -d
  foobar (no-eol)
