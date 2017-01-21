tests
testReadingOutputType
	| dictionary config |
	dictionary := Dictionary with: 'outputType' -> 'html'.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config outputType equals: PRHTMLWriter