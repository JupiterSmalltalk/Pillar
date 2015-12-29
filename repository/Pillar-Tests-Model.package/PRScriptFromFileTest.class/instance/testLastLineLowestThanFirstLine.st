tests
testLastLineLowestThanFirstLine
	| input |
	input := PRDocument new
		add:
				((PRScript content: '')
						fromFile: 'code.st';
						firstLine: 5;
						lastLine: 0 yourself);
		yourself.
	self should: [ self transform: input ] raise: PRPropertyError