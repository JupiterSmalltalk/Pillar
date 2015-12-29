configurations
getConfigurationNamed: configurationName
	^ (self subConfigurationNamed: configurationName) ifNil: [ self findDefaultConfigurationNamed: configurationName ]