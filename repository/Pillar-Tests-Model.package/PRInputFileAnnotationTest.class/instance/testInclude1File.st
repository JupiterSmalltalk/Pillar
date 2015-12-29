tests
testInclude1File
	| wiki wikiTransform text tree |
	wiki := '${inputFile:foo.pillar}$'.
	wikiTransform := '!!Hello World'.
	text := 'Hello World'.
	tree := PRDocument new
		add:
				(PRHeader new
						level: 2;
						add: (PRText content: 'Hello World');
						yourself);
		yourself.
	self assertWikiTransform: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wikiTransform.
	self assertTree: tree equalsText: text