tests
testReadingTitle
	| dictionary config |
	dictionary := Dictionary with: 'title' -> 'foo'.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config title equals: 'foo'