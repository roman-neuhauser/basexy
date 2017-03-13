  $ . "$TESTDIR/setup"


  $ basex -d base32hex </dev/null

  $ printf CO====== | basex -d base32hex
  f (no-eol)

  $ printf CPNG==== | basex -d base32hex
  fo (no-eol)

  $ printf CPNMU=== | basex -d base32hex
  foo (no-eol)

  $ printf CPNMUOG= | basex -d base32hex
  foob (no-eol)

  $ printf CPNMUOJ1 | basex -d base32hex
  fooba (no-eol)

  $ printf CPNMUOJ1E8====== | basex -d base32hex
  foobar (no-eol)
