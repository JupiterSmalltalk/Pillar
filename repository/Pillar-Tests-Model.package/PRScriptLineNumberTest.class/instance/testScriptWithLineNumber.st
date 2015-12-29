as yet unclassified
testScriptWithLineNumber
	| input expected |
	input := PRDocument new
		add:
				((PRScript content: 'stream nextPut: $h; nextPut: $e; nextPut: $l; nextPutAll: ''lo''')
						lineNumber: true;
						eval: false;
						yourself);
		yourself.
	expected := PRDocument new
		add:
				((PRScript content: '1	stream nextPut: $h; nextPut: $e; nextPut: $l; nextPutAll: ''lo''')
						lineNumber: true;
						eval: false;
						yourself);
		yourself.
	self assert: (self transform: input) equals: expected