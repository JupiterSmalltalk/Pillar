tests
testReadingRenderStructureAsSlide
	| dictionary config |
	dictionary := Dictionary with: 'renderStructureAsSlide' -> false.
	config := PRPillarConfiguration newFromDictionary: dictionary.
	self assert: config renderStructureAsSlide equals: false