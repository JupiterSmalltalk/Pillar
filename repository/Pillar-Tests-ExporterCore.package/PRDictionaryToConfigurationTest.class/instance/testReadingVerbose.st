tests
testReadingVerbose
	| dictionary config |
	dictionary := Dictionary with: 'verbose' -> false.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config verbose equals: false