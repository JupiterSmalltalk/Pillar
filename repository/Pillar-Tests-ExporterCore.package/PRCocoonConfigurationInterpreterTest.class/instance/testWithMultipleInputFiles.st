tests
testWithMultipleInputFiles
	| ston configuration |
	ston := '{ #inputFiles : [ "fileForTest1", "fileForTest2" ] }'.
	FileSystem workingDirectory / 'fileForTest1' writeStreamDo: [ :s | s nextPutAll: 'foo' ].
	FileSystem workingDirectory / 'fileForTest2' writeStreamDo: [ :s | s nextPutAll: 'bar' ].
	configuration := (self fromString: ston)
		baseDirectory: FileSystem workingDirectory;
		yourself.
	self assert: configuration inputFiles size equals: 2.
	(FileSystem workingDirectory / 'fileForTest1') ensureDelete.
	(FileSystem workingDirectory / 'fileForTest2') ensureDelete