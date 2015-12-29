testing
isColumnBeginning
	^ self children size = 1 and: [ self children first isColumnBeginning ]