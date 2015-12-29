transformers
transformerSectionOn: aCollection
	<pillarTransformer: 300 key: 'section' documentation:
		'I visit a document and I add a section'' structure to the document if I export in HTML or Deck.js.'>
	^ self standardTransformationOf: aCollection with: PRSectionTransformer