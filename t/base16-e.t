  $ . "$TESTDIR/setup"


  $ base16 -e </dev/null

  $ printf f | base16 -e
  66 (no-eol)

  $ printf fo | base16 -e
  666F (no-eol)

  $ printf foo | base16 -e
  666F6F (no-eol)

  $ printf foob | base16 -e
  666F6F62 (no-eol)

  $ printf fooba | base16 -e
  666F6F6261 (no-eol)

  $ printf foobar | base16 -e
  666F6F626172 (no-eol)
