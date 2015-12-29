parsing
parseProperties
	| next isSton |
	self stream atEnd ifTrue: [ ^self ].

	next := self stream next.
	isSton := next = ${ and: [ self stream peek ~~ ${ ].
	self stream skip: -1.
	
	isSton ifTrue: [ | ston |
		ston := (STON reader on: self stream) next.
		ston keysAndValuesDo: [ :key :value | 
		document propertyAt: key put: value ] ]