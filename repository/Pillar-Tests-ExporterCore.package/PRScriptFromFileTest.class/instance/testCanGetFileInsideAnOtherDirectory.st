tests
testCanGetFileInsideAnOtherDirectory
	| input expected |
	(baseDirectory / 'foo') ensureCreateDirectory.
	self createFile: 'code.st' With: self aCode In: baseDirectory / 'foo'.
	input := PRDocument new
		add: ((PRScript content: '') fromFile: 'foo/code.st' yourself);
		yourself.
	expected := PRDocument new
		add:
			((PRScript content: self aCode)
				fromFile: 'foo/code.st';
				yourself);
		yourself.
	self
		assert: (self executePhase: input with: self configuration)
		equals: expected