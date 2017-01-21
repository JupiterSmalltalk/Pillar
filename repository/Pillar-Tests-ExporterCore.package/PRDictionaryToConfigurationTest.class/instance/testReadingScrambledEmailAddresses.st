tests
testReadingScrambledEmailAddresses
	| dictionary config |
	dictionary := Dictionary with: 'scrambledEmailAddresses' -> false.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config scrambledEmailAddresses equals: false