tests
testReadingSeparateOutputFiles
	| dictionary config |
	dictionary := Dictionary with: 'separateOutputFiles' -> false.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config separateOutputFiles equals: false