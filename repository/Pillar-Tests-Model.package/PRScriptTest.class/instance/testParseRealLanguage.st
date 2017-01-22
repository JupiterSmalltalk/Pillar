tests-parsing
testParseRealLanguage
  | wiki text tree nLine |
  nLine := GRPlatform current newline.
  wiki := '[[[language=smalltalk' , nLine , 'foo' , nLine , ']]]'.
  text := 'foo'.
  tree := PRDocument new
    add:
        ((PRScript content: 'foo')
            language: PRSmalltalkScriptLanguage default;
            yourself);
    yourself.
  self assertWiki: wiki equalsTree: tree.
  self assertTree: tree equalsWiki: wiki.
  self assertTree: tree equalsText: text