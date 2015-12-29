transformers
transformerColumnsOn: aCollection
	<pillarTransformer: 90 key: 'columns' documentation:
		'I visit a document and I replace the columns annotations by a structure of columns.'>
	^ self standardTransformationOf: aCollection with: PRColumnsTransformer