tests
testHasWrongFileFrom
	| input |
	input := PRDocument new
		add: ((PRScript content: '') fromFile: 'wrong.st' yourself);
		yourself.
	self should: [ self transform: input ] raise: PRInputFileError