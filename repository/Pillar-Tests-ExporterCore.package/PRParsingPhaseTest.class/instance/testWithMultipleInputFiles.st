tests
testWithMultipleInputFiles
	| ston configuration document |
	ston := '{ #inputFiles : [ "fileForTest1", "fileForTest2" ] }'.
	FileSystem workingDirectory / 'fileForTest1' writeStreamDo: [ :s | s nextPutAll: 'foo' ].
	FileSystem workingDirectory / 'fileForTest2' writeStreamDo: [ :s | s nextPutAll: 'bar' ].
	configuration := (self fromString: ston)
		baseDirectory: baseDirectory;
		yourself.
	document := (self actualClass executeOn: configuration inputFiles with: configuration) first.
	self assert: document children size equals: 2.
	self assert: document children first text equals: 'foo'.
	self assert: document children second text equals: 'bar'.
	(FileSystem workingDirectory / 'fileForTest1') ensureDelete.
	(FileSystem workingDirectory / 'fileForTest2') ensureDelete