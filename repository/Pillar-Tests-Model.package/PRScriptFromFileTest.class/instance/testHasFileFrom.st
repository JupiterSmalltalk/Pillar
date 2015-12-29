tests
testHasFileFrom
	| input expected |
	input := PRDocument new
		add: ((PRScript content: '') fromFile: 'code.st' yourself);
		yourself.
	expected := PRDocument new
		add:
				((PRScript content: self aCode)
						fromFile: 'code.st';
						yourself);
		yourself.
	self assert: (self transform: input) equals: expected