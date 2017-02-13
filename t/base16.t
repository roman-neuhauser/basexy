  $ . "$TESTDIR/setup"


  $ base16 </dev/null

  $ printf f | base16
  66 (no-eol)

  $ printf fo | base16
  666F (no-eol)

  $ printf foo | base16
  666F6F (no-eol)

  $ printf foob | base16
  666F6F62 (no-eol)

  $ printf fooba | base16
  666F6F6261 (no-eol)

  $ printf foobar | base16
  666F6F626172 (no-eol)
