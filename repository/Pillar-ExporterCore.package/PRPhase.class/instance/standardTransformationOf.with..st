actions
standardTransformationOf: aCollectionInput with: aTransformerClass
	"Most of the time we call different transfromers of the same way. This is a standard transformation."

	| anOutput index |
	"Most of the time the input is a collection. If it is not a collection, it's not a standard transformation so we can end this transformation."
	aCollectionInput isCollection
		ifFalse: [ ^ aCollectionInput ].
	anOutput := aCollectionInput class ofSize: aCollectionInput size.
	index := 1.
	aCollectionInput
		do: [ :each | 
			anOutput
				at: index
				put:
					(aTransformerClass new
						configuration: self configuration;
						start: each;
						topNode).
			index := index + 1 ].
	^ anOutput