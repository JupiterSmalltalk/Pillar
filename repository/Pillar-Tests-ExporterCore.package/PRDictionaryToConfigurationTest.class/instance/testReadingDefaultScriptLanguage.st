tests
testReadingDefaultScriptLanguage
	| dictionary config |
	dictionary := Dictionary with: 'defaultScriptLanguage' -> 'smalltalk'.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config defaultScriptLanguage equals: (PRAbstractScriptLanguage for: 'smalltalk')