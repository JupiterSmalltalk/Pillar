activation
createConfiguration: confFilename
	| confFile |
	confFile := self baseDirectory resolve: confFilename.
	configuration := confFile exists
		ifTrue: [ self readConfigurationFromFile: confFile ]
		ifFalse: [ PRPillarConfiguration newFromDictionary: self argumentsForConfigurationExtension ]