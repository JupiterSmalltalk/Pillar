tests
testLastLineDefine
	| input expected |
	input := PRDocument new
		add:
				((PRScript content: '')
						fromFile: 'code.st';
						lastLine: self firstLine + 3 yourself);
		yourself.
	expected := PRDocument new
		add:
				((PRScript content: self headingCode , self middleCode)
						fromFile: 'code.st';
						lastLine: self firstLine + 3 yourself);
		yourself.
	self assert: (self transform: input) equals: expected