action
removeDuplicated: aCollectionOfPragmas
	| result keywords |
	result := OrderedCollection new.
	keywords := OrderedCollection new.
	aCollectionOfPragmas
		do: [ :pragma | 
			| key |
			key := pragma arguments second.
			(keywords includes: key)
				ifFalse: [ 
					result add: pragma.
					keywords add: key ] ].
	^ result