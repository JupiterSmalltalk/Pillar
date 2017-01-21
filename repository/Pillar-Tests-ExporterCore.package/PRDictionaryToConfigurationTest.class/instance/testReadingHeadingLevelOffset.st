tests
testReadingHeadingLevelOffset
	| dictionary config |
	dictionary := Dictionary with: 'headingLevelOffset' -> 1.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config headingLevelOffset equals: 1