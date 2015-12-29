actions
export: configurationName
	self log: 'Exporting ' , configurationName.
	(self getConfigurationNamed: configurationName) export.
	self log: 'End of exporting ' , configurationName