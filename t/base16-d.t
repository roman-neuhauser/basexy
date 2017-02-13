  $ . "$TESTDIR/setup"


  $ base16 -d </dev/null

  $ printf 66 | base16 -d
  f (no-eol)

  $ printf 666F | base16 -d
  fo (no-eol)

  $ printf 666F6F | base16 -d
  foo (no-eol)

  $ printf 666F6F62 | base16 -d
  foob (no-eol)

  $ printf 666F6F6261 | base16 -d
  fooba (no-eol)

  $ printf 666F6F626172 | base16 -d
  foobar (no-eol)
