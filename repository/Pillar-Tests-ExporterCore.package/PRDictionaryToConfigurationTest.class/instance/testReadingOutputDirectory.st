tests
testReadingOutputDirectory
	| dictionary config fileSystem |
	fileSystem := FileSystem memory root.
	(fileSystem / 'foo') ensureCreateDirectory.
	dictionary := Dictionary with: 'baseDirectory' -> fileSystem with: 'outputDirectory' -> 'foo'.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config outputDirectory equals: fileSystem / 'foo'