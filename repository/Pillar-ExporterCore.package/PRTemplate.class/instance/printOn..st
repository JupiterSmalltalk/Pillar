printing
printOn: aStream
	aStream nextPutAll: 'PRTemplate <', template asString, '>'