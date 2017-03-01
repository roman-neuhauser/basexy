  $ . "$TESTDIR/setup"


  $ basex-base16 -d </dev/null

  $ printf 66 | basex-base16 -d
  f (no-eol)

  $ printf 666F | basex-base16 -d
  fo (no-eol)

  $ printf 666F6F | basex-base16 -d
  foo (no-eol)

  $ printf 666F6F62 | basex-base16 -d
  foob (no-eol)

  $ printf 666F6F6261 | basex-base16 -d
  fooba (no-eol)

  $ printf 666F6F626172 | basex-base16 -d
  foobar (no-eol)
