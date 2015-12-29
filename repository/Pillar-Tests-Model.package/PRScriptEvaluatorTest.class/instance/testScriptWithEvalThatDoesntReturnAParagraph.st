tests
testScriptWithEvalThatDoesntReturnAParagraph
	| input expected |
	input := PRDocument new
		add:
			(PRParagraph new
				add:
						((PRScript content: 'stream nextPutAll: ''-test''')
								eval: true;
								yourself);
				yourself) yourself.
	expected := PRDocument new
		add:
			(PRParagraph new
				add: (PRUnorderedList new add: (PRListItem new add: (PRText content: 'test')));
				yourself) yourself.
	self assert: (self transform: input) equals: expected