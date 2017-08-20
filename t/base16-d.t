  $ . "$TESTDIR/setup"


  $ basexy -d base16 </dev/null

  $ printf 66 | basexy -d base16
  f (no-eol)

  $ printf 666F | basexy -d base16
  fo (no-eol)

  $ printf 666F6F | basexy -d base16
  foo (no-eol)

  $ printf 666F6F62 | basexy -d base16
  foob (no-eol)

  $ printf 666F6F6261 | basexy -d base16
  fooba (no-eol)

  $ printf 666F6F626172 | basexy -d base16
  foobar (no-eol)
