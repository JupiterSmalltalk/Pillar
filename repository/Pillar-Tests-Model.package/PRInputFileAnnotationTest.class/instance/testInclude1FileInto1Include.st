tests
testInclude1FileInto1Include
  | wiki wikiTransform text tree nLine |
  nLine := OSPlatform current lineEnding.
  wiki := '${inputFile:bar.pillar}$'.
  wikiTransform := '!!Hello World' , nLine , '!!Bye World'.
  text := 'Hello World' , nLine , 'Bye World'.
  tree := PRDocument new
    add:
        (PRHeader new
            level: 2;
            add: (PRText content: 'Hello World');
            yourself);
    add:
        (PRHeader new
            level: 2;
            add: (PRText content: 'Bye World');
            yourself);
    yourself.
  self assertWikiTransform: wiki equalsTree: tree.
  self assertTree: tree equalsWiki: wikiTransform.
  self assertTree: tree equalsText: text