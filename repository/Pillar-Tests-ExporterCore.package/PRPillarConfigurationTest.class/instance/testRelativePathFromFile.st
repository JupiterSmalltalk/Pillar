tests
testRelativePathFromFile
	| confFile configuration |
	FileSystem workingDirectory / 'fileForTest1.pillar' writeStreamDo: [ :stream | stream nextPutAll: 'foo' ].
	confFile := FileSystem workingDirectory / 'pillar.conf'.
	confFile writeStreamDo: [ :stream | stream nextPutAll: '{ #inputFile : "fileForTest1.pillar" }' ].
	configuration := PRPillarConfiguration newFromFile: confFile.
	self assert: configuration inputFile exists.
	(FileSystem workingDirectory / 'fileForTest1.pillar') ensureDelete.
	(FileSystem workingDirectory / 'pillar.conf') ensureDelete