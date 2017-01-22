tests
testInclude1FileContentInto1Paragraph
  | wiki wikiTransform text tree nLine |
  nLine := GRPlatform current newline.
  wiki := 'Foo ${inputFile:timoleon.pillar}$'.
  wikiTransform := 'Foo !!Hello World' , nLine , 'test' , nLine.
  text := 'Foo Hello World' , nLine , 'test' , nLine.
  tree := PRDocument new
    add:
        (PRParagraph new
            add: (PRText content: 'Foo ');
            add:
                (PRHeader new
                    level: 2;
                    add: (PRText content: 'Hello World');
                    yourself);
            add: (PRParagraph new add: (PRText content: 'test')));
    yourself.
  self assertWikiTransform: wiki equalsTree: tree.
  self assertTree: tree equalsWiki: wikiTransform.
  self assertTree: tree equalsText: text