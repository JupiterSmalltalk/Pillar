tests
testReadingNewLine
	| dictionary config |
	dictionary := Dictionary with: 'newLine' -> #unix.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config newLine equals: UnixPlatform new lineEnding