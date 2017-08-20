  $ . "$TESTDIR/setup"


  $ basexy -e base16 </dev/null

  $ printf f | basexy -e base16
  66 (no-eol)

  $ printf fo | basexy -e base16
  666F (no-eol)

  $ printf foo | basexy -e base16
  666F6F (no-eol)

  $ printf foob | basexy -e base16
  666F6F62 (no-eol)

  $ printf fooba | basexy -e base16
  666F6F6261 (no-eol)

  $ printf foobar | basexy -e base16
  666F6F626172 (no-eol)
