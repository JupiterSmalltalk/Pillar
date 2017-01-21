tests
testDescriptionOutputDirectoryAllowsKindAbstractFileReference
	self shouldnt: 
		[ PRPillarConfiguration new outputDirectory: FileLocator imageDirectory ]
		raise: Error.
	self shouldnt:
		[ PRPillarConfiguration new outputDirectory: FileLocator imageDirectory asFileReference ]
		raise: Error