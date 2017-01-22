tests-parsing
testParseEmptyLineAtBeginning
  | wiki text tree |
  wiki := '' , GRPlatform current newline , 'Lorem ipsum dolor sit amet.'.
  text := wiki.
  tree := PRDocument new
    add: PREmptyParagraph new;
    add:
        (PRParagraph new
            add: (PRText content: 'Lorem ipsum dolor sit amet.');
            yourself);
    yourself.
  self assertWiki: wiki equalsTree: tree.
  self assertTree: tree equalsWiki: wiki.
  self assertTree: tree equalsText: text