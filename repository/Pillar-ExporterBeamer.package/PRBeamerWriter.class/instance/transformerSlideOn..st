transformers
transformerSlideOn: aCollection
	<pillarTransformer: 200 key: 'slide' documentation:
		'I visit a document and I replace a slide annotation by a slide structure if I export a document in Beamer or Deck.js.'>
	^ self standardTransformationOf: aCollection with: PRSlideTransformer