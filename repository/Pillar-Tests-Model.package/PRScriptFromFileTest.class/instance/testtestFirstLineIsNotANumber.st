tests
testtestFirstLineIsNotANumber
	| input |
	input := PRDocument new
		add:
				((PRScript content: '')
						fromFile: 'code.st';
						firstLine: 'foo' yourself);
		yourself.
	self should: [ self transform: input ] raise: PRPropertyError