tests
testInclude1FileHeaderInto1Paragraph
	| wiki wikiTransform text tree nLine |
	nLine := Smalltalk os lineEnding.
	wiki := 'Foo ${inputFile:foo.pillar}$'.
	wikiTransform := 'Foo !!Hello World', nLine.
	text := 'Foo Hello World', nLine.
	tree := PRDocument new
		add:
				(PRParagraph new
						add: (PRText content: 'Foo ');
						add:
								(PRHeader new
										level: 2;
										add: (PRText content: 'Hello World');
										yourself));
		yourself.
	self assertWikiTransform: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wikiTransform.
	self assertTree: tree equalsText: text