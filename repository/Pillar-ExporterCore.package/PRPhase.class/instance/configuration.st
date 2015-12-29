accessing
configuration
	^ configuration isNotNil
		ifTrue: [ configuration ]
		ifFalse: [ PRCocoonConfiguration new ]