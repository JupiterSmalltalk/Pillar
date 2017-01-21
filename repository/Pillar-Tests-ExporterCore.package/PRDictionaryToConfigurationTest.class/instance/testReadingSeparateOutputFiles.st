tests
testReadingSeparateOutputFiles
	| dictionary config |
	dictionary := Dictionary with: 'separateOutputFiles' -> false.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config separateOutputFiles equals: false