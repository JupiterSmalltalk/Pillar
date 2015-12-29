transformers
transformerScriptEvaluatorOn: aCollection
	<pillarTransformer: 50 key: 'scriptEvaluator' documentation:
		'I visit a document and I evaluate a script if his ==eval== parameter is ==true==.'>
	^ self standardTransformationOf: aCollection with: PRScriptEvaluator