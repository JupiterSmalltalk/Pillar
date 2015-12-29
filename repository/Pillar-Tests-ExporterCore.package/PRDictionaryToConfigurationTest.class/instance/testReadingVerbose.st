tests
testReadingVerbose
	| dictionary config |
	dictionary := Dictionary with: 'verbose' -> false.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config verbose equals: false