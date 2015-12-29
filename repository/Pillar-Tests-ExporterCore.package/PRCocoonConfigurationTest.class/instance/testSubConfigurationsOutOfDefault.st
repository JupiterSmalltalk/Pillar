tests
testSubConfigurationsOutOfDefault
	"I check that a sub configuration out of the default subconfigurations exists."

	| ston output |
	FileSystem workingDirectory / 'templateTest.template'
		writeStreamDo: [ :s | s nextPutAll: 'Foo {{{content}}} Bar' ].
	ston := '{
		"support": [  ],
		"configurations":{
			"foo": { 
				"template":"templateTest.template",
				"outputType": #mock
			 }
		}
}'.
	output := '' writeStream.
	(PRCocoonConfiguration newFromString: ston)
		inputString: 'Test';
		outputStream: output;
		export: 'foo'.
	(FileSystem workingDirectory / 'templateTest.template') ensureDelete.
	self assert: output contents equals: 'Foo Test Bar'