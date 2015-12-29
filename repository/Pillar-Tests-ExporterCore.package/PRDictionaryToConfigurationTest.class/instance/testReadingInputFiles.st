tests
testReadingInputFiles
	| dictionary config fileSystem |
	fileSystem := FileSystem memory root.
	fileSystem / 'test.txt' writeStreamDo: [ :st | st nextPutAll: 'bar' ].
	fileSystem / 'test2.txt' writeStreamDo: [ :st | st nextPutAll: 'foo' ].
	dictionary := Dictionary
		with: 'baseDirectory' -> fileSystem
		with: 'inputFiles' -> (Array with: 'test.txt' with: 'test2.txt').
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config inputFiles first contents equals: 'bar'.
	self assert: config inputFiles second contents equals: 'foo'