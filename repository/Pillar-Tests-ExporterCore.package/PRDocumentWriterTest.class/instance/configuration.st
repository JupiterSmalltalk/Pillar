helpers
configuration
	^ configuration ifNil: [ configuration := PRPillarConfiguration new ]