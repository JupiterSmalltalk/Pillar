tests
testParsing
	| ston configuration |
	ston := '{ #inputFiles : [ "fileForTest1.pillar" ] }'.
	FileSystem workingDirectory / 'fileForTest1.pillar' writeStreamDo: [ :stream | stream nextPutAll: 'foo' ].
	configuration := (self fromString: ston)
		baseDirectory: FileSystem workingDirectory;
		yourself.
	self
		assert: (self actualClass executeOn: configuration inputFiles with: configuration)
		equals: (OrderedCollection with: (PRDocument new add: (PRParagraph new add: (PRText content: 'foo')))).
	(FileSystem workingDirectory / 'fileForTest1.pillar') ensureDelete