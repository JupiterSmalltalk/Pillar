grammar - Annotation
annotation
	^ super annotation
		==>
			[ :array | array second parameters: (array third ifNil: [ GRSmallDictionary new ]) ]