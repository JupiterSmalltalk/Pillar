tests
testDescriptionOutputDirectoryAllowsDirsOnly
	
	| directory |
	directory := FileLocator imageDirectory.
	self shouldnt: [ PRPillarConfiguration new outputDirectory: directory ] raise: Error.
	directory := Smalltalk imageFile.
	self should: [ PRPillarConfiguration new outputDirectory: directory ] raise: Error.