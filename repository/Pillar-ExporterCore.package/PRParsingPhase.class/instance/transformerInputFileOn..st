transformers
transformerInputFileOn: aCollection
	<pillarTransformer: 1 key: 'fileInclusion' documentation:
		'I visit a document and transform an ==inputFile== annotation into the content of the file.'>
	^ self standardTransformationOf: aCollection with: PRFileInclusion