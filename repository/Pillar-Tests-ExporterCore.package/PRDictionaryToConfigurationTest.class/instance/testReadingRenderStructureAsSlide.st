tests
testReadingRenderStructureAsSlide
	| dictionary config |
	dictionary := Dictionary with: 'renderStructureAsSlide' -> false.
	config := PRCocoonConfiguration newFromDictionary: dictionary.
	self assert: config renderStructureAsSlide equals: false