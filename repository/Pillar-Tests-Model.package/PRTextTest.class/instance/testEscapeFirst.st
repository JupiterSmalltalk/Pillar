tests-parsing
testEscapeFirst
  | wiki tree nLine |
  nLine := GRPlatform current newline.
  wiki := '\* text' , nLine , '\+ text' , nLine , '\= text' , nLine , '\@ text'
    , nLine , '\! text' , nLine , '\| text' , nLine , '\# text' , nLine
    , '\- text'.
  tree := PRDocument new
    add:
        (PRParagraph new
            add: (PRText content: '* text');
            add: PRLineBreak new;
            add: (PRText content: '+ text');
            add: PRLineBreak new;
            add: (PRText content: '= text');
            add: PRLineBreak new;
            add: (PRText content: '@ text');
            add: PRLineBreak new;
            add: (PRText content: '! text');
            add: PRLineBreak new;
            add: (PRText content: '| text');
            add: PRLineBreak new;
            add: (PRText content: '# text');
            add: PRLineBreak new;
            add: (PRText content: '- text');
            yourself);
    yourself.
  self assertWiki: wiki equalsTree: tree.
  self assertTree: tree equalsWiki: wiki