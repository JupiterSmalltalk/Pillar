tests
testDescriptionOutputDirectoryAcceptsNotYetCreatedDirectories
	
	| directory |
	directory := FileLocator imageDirectory / UUID new printString.
	self deny: directory exists.
	self shouldnt: [ PRPillarConfiguration new outputDirectory: directory ] raise: Error.