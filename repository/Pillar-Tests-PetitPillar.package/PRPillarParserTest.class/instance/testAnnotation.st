tests - Annotation
testAnnotation
	super testAnnotation.
	self
		assert: result
		equals: (PRInputFileAnnotation parameters: 
						((GRSmallDictionary new
						at: 'value' put: 'Foo';
						yourself)))