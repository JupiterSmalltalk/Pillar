tests
testAnchorWithoutTitle
	| input |
	input := PRDocument new
		add: (PRText content: 'foo');
		yourself.
	self assert: (self transform: input) equals: input