testing
isSlideBeginning
	^ self children size = 1 and: [ self children first isSlideBeginning ]