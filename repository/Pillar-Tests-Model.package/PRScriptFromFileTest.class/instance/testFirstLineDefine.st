tests
testFirstLineDefine
	| input expected |
	input := PRDocument new
		add:
				((PRScript content: '')
						fromFile: 'code.st';
						firstLine: self firstLine + 1 yourself);
		yourself.
	expected := PRDocument new
		add:
				((PRScript content: self middleCode , self endingCode)
						fromFile: 'code.st';
						firstLine: self firstLine + 1 yourself);
		yourself.
	self assert: (self transform: input) equals: expected