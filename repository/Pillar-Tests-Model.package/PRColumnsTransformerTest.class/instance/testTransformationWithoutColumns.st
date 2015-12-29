tests
testTransformationWithoutColumns
	| input |
	input := PRDocument new
		add:
				(PRParagraph new
						add: (PRText content: 'Foo');
						yourself);
		add: (PRParagraph with: (PRText content: 'Bar') yourself);
		yourself.
	self assert: (self transform: input) equals: input