  $ . "$TESTDIR/setup"


  $ basex -e base16 </dev/null

  $ printf f | basex -e base16
  66 (no-eol)

  $ printf fo | basex -e base16
  666F (no-eol)

  $ printf foo | basex -e base16
  666F6F (no-eol)

  $ printf foob | basex -e base16
  666F6F62 (no-eol)

  $ printf fooba | basex -e base16
  666F6F6261 (no-eol)

  $ printf foobar | basex -e base16
  666F6F626172 (no-eol)
