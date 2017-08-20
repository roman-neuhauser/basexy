  $ . "$TESTDIR/setup"


  $ basexy base16 </dev/null

  $ printf f | basexy base16
  66 (no-eol)

  $ printf fo | basexy base16
  666F (no-eol)

  $ printf foo | basexy base16
  666F6F (no-eol)

  $ printf foob | basexy base16
  666F6F62 (no-eol)

  $ printf fooba | basexy base16
  666F6F6261 (no-eol)

  $ printf foobar | basexy base16
  666F6F626172 (no-eol)
