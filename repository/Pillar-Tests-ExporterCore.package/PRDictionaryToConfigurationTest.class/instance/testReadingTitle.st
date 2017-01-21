tests
testReadingTitle
	| dictionary config |
	dictionary := Dictionary with: 'title' -> 'foo'.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config title equals: 'foo'