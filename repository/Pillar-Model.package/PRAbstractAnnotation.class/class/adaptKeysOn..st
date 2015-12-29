protected
adaptKeysOn: aCollection
	| newDictionary |
	newDictionary := GRSmallDictionary new.
	aCollection keys
		do: [ :key | 
			(aCollection at: key) isNil
				ifTrue: [ newDictionary at: self defaultParameterName put: key ]
				ifFalse: [ newDictionary at: key put: (aCollection at: key) ] ].
	^ newDictionary