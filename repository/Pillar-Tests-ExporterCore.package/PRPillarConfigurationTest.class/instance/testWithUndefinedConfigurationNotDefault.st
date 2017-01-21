tests
testWithUndefinedConfigurationNotDefault
	self should: [ (PRPillarConfiguration newFromString: '{}')
							export: 'not existing' ] raise: PRConfigurationError