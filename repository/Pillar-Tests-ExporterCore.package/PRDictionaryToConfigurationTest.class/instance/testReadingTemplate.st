tests
testReadingTemplate
	| dictionary config fileSystem |
	fileSystem := FileSystem memory root.
	fileSystem / 'foo.template' writeStreamDo: [ :st | st nextPutAll: 'bar' ].
	dictionary := Dictionary with: 'baseDirectory' -> fileSystem with: 'template' -> 'foo.template'.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config templateContents equals: 'bar'