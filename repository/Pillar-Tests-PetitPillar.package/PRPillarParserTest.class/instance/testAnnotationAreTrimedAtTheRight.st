tests - Annotation
testAnnotationAreTrimedAtTheRight
	super testAnnotationAreTrimedAtTheRight.
	self
		assert: result
		equals:
			(PRInputFileAnnotation
				parameters:
					(GRSmallDictionary new
						at: 'value' put: 'Foo';
						yourself))