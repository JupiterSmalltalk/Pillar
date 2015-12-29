tests
testChangedTemplatedDoesntRemoveOutputType
	| ston output |
	FileSystem workingDirectory / 'templateTest.template' writeStreamDo: [ :s | s nextPutAll: 'Foo {{{content}}} Bar' ].
	ston := '{
	"support": [  ], 
	"template" : "templateTest.template"
}'.
	output := '' writeStream.
	(PRCocoonConfiguration newFromString: ston)
		inputString: 'Test';
		outputStream: output;
		export: 'mock'.
	(FileSystem workingDirectory / 'templateTest.template') ensureDelete.
	self assert: output contents equals: 'Foo Test Bar'