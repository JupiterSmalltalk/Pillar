tests
testFirstLineOutOfBounds
	| input |
	input := PRDocument new
		add:
				((PRScript content: '')
						fromFile: 'code.st';
						firstLine: 500 yourself);
		yourself.
	self should: [ self transform: input ] raise: PRPropertyError