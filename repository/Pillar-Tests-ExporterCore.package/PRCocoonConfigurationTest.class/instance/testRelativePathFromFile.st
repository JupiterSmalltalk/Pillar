tests
testRelativePathFromFile
	| confFile configuration |
	FileSystem workingDirectory / 'fileForTest1.pillar' writeStreamDo: [ :stream | stream nextPutAll: 'foo' ].
	confFile := FileSystem workingDirectory / 'pillar.conf'.
	confFile writeStreamDo: [ :stream | stream nextPutAll: '{ #inputFiles : [ "fileForTest1.pillar" ] }' ].
	configuration := PRCocoonConfiguration newFromFile: confFile.
	self assert: configuration inputFiles first exists.
	(FileSystem workingDirectory / 'fileForTest1.pillar') ensureDelete.
	(FileSystem workingDirectory / 'pillar.conf') ensureDelete