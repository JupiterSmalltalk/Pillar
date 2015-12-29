transformers
transformerScriptFromFileOn: aCollection
	<pillarTransformer: 100 key: 'scriptInclusion' documentation:
		'I visit a document and I include the content of a script if a script has a ==fromFile== parameter.'>
	^ self standardTransformationOf: aCollection with: PRScriptFromFile