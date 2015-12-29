actions
transform: aCollection
	| transformers |
	transformers := self transformers.
	transformers := transformers , self specificTransformers.
	transformers sort: [ :p1 :p2 | p1 arguments first < p2 arguments first ].
	transformers do: [ :transformer | self transform: aCollection with: transformer ].
	^ aCollection