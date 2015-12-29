*Pillar-Model-Core
collect: aBlock
	| newDictionary |
	newDictionary := self class new.
	self keys do: [ :key | newDictionary at: key put: (aBlock value: (self at: key)) ].
	^ newDictionary