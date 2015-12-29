tests
testLastLineOutOfBounds
	| input |
	input := PRDocument new
		add:
				((PRScript content: '')
						fromFile: 'code.st';
						lastLine: 500 yourself);
		yourself.
	self should: [ self transform: input ] raise: PRPropertyError