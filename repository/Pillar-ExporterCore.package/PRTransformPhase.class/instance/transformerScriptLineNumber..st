transformers
transformerScriptLineNumber: aCollection
	<pillarTransformer: 500 key: 'scriptLineNumber' documentation:
		'I visit a document and I add lines numbers to the script with the ==lineNumber== parameter at ==true==.'>
	^ self standardTransformationOf: aCollection with: PRScriptLineNumber