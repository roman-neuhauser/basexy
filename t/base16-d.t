  $ . "$TESTDIR/setup"


  $ basex -d base16 </dev/null

  $ printf 66 | basex -d base16
  f (no-eol)

  $ printf 666F | basex -d base16
  fo (no-eol)

  $ printf 666F6F | basex -d base16
  foo (no-eol)

  $ printf 666F6F62 | basex -d base16
  foob (no-eol)

  $ printf 666F6F6261 | basex -d base16
  fooba (no-eol)

  $ printf 666F6F626172 | basex -d base16
  foobar (no-eol)
