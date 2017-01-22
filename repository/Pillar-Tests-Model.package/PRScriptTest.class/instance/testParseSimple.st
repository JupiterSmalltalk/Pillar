tests-parsing
testParseSimple
  | wiki text tree nLine |
  nLine := GRPlatform current newline.
  wiki := '[[[' , nLine , 'foo' , nLine , ']]]'.
  text := 'foo'.
  tree := PRDocument new
    add: (PRScript content: 'foo');
    yourself.
  self assertWiki: wiki equalsTree: tree.
  self assertTree: tree equalsWiki: wiki.
  self assertTree: tree equalsText: text