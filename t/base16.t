  $ . "$TESTDIR/setup"


  $ basex base16 </dev/null

  $ printf f | basex base16
  66 (no-eol)

  $ printf fo | basex base16
  666F (no-eol)

  $ printf foo | basex base16
  666F6F (no-eol)

  $ printf foob | basex base16
  666F6F62 (no-eol)

  $ printf fooba | basex base16
  666F6F6261 (no-eol)

  $ printf foobar | basex base16
  666F6F626172 (no-eol)
