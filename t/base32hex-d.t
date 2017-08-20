  $ . "$TESTDIR/setup"


  $ basexy -d base32hex </dev/null

  $ printf CO====== | basexy -d base32hex
  f (no-eol)

  $ printf CPNG==== | basexy -d base32hex
  fo (no-eol)

  $ printf CPNMU=== | basexy -d base32hex
  foo (no-eol)

  $ printf CPNMUOG= | basexy -d base32hex
  foob (no-eol)

  $ printf CPNMUOJ1 | basexy -d base32hex
  fooba (no-eol)

  $ printf CPNMUOJ1E8====== | basexy -d base32hex
  foobar (no-eol)
