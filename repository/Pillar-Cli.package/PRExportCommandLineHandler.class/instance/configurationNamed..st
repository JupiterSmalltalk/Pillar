activation
configurationNamed: aString
	| newConfiguration subConfiguration |
	newConfiguration := configuration copy.
	subConfiguration := configuration getConfigurationNamed: aString.
	newConfiguration parent: subConfiguration.
	^ newConfiguration