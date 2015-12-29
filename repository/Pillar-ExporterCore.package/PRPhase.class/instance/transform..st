actions
transform: aCollection
	"I can be overriden if you need to add more transformers. See PRTransformPhase>>transform:"

	| transformedCollection |
	transformedCollection := aCollection copy.
	self transformers
		do: [ :transformer | 
			| tmpColl |
			tmpColl := self transform: aCollection with: transformer.
			tmpColl isNotNil
				ifTrue: [ transformedCollection := tmpColl ] ].
	^ transformedCollection