tests-parsing
testParseTypeInvalid
	| wiki text tree |
	wiki := '{{{invalid:abc}}}'.
	text := 'invalid:abc'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (PRRaw content: 'invalid:abc');
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text