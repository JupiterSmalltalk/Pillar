transformers
transformers
	"I return an ordered collection with all the transformers with the pragma 'pillarTransformer' on a class by priority order."

	^ Pragma
		allNamed: #pillarTransformer:key:documentation:
		in: self class
		sortedUsing: [ :p1 :p2 | p1 arguments first < p2 arguments first ]