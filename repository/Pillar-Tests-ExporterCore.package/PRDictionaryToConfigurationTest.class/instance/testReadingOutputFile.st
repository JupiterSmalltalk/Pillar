tests
testReadingOutputFile
	| dictionary config fileSystem |
	fileSystem := FileSystem memory root.
	dictionary := Dictionary
		with: 'baseDirectory' -> fileSystem
		with: 'outputFile' -> '/foo/bar'.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self
		assert: config outputFile
		equals: (RelativePath from: '/foo/bar')