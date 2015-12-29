testing
isColumnsEnding
	^ self children size = 1 and: [ self children first isColumnsEnding ]