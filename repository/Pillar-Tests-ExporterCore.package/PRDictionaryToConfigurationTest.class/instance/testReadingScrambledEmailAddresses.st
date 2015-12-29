tests
testReadingScrambledEmailAddresses
	| dictionary config |
	dictionary := Dictionary with: 'scrambledEmailAddresses' -> false.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config scrambledEmailAddresses equals: false