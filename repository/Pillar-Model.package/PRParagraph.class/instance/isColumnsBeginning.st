testing
isColumnsBeginning
	^ self children size = 1 and: [ self children first isColumnsBeginning ]