tests
testWithUndefinedConfigurationNotDefault
	self should: [ (PRCocoonConfiguration newFromString: '{}')
							export: 'not existing' ] raise: PRConfigurationError