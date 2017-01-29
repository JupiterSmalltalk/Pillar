streaming
<< anObject
	anObject isBlock
		ifTrue: anObject
		ifFalse: [ anObject putOn: stream ]