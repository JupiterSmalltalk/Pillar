descriptions
descriptionConfigurations
	<magritteDescription>
	^ CCMagrigtteToManyRelationConfigurationDescription new
		accessor: #configurations;
		priority: 100;
		label: 'Mock subconfigurations';
		cocoonDocumentation: 'A dictionary of default configurations from the exporters.';
		classes: {self class};
		cocoonDefaultDocumentation: 'An empty dictionary to break the recursivity';
		default: Dictionary new