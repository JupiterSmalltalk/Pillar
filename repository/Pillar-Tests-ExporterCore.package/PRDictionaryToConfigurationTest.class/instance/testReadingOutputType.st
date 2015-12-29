tests
testReadingOutputType
	| dictionary config |
	dictionary := Dictionary with: 'outputType' -> 'html'.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config outputType equals: PRHTMLWriter