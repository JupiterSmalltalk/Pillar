tests
testNoInclude
	| wiki text tree|
	wiki := '!!Hello World'.
	text := 'Hello World'.
	tree := PRDocument new
		add:
							(PRHeader new
								level: 2;
								add: (PRText content: 'Hello World');
								yourself);
		yourself.
	self assertWikiTransform: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text