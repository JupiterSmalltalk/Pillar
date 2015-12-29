helpers
configuration
	^ configuration ifNil: [ configuration := PRCocoonConfiguration new ]