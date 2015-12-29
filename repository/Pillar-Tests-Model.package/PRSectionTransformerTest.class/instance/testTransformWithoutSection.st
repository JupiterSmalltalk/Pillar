tests
testTransformWithoutSection
	| input |
	input := PRDocument new
		add: (PRParagraph with: (PRText content: 'Foo!') yourself);
		yourself.
	self assert: (self transform: input) equals: input