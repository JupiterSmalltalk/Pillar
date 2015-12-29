visiting-document
visitString: aString

	writingRaw
		ifTrue: [ canvas rawLines: aString ]
		ifFalse: [ canvas nextPutAllLines: aString ]