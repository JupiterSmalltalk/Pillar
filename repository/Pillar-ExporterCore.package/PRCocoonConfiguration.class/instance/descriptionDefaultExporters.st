descriptions
descriptionDefaultExporters
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		priority: 100;
		accessor: #defaultExporters;
		label: 'List of the default exporters.';
		cocoonDocumentation: 'List of the default exporters if we do not use the "\-\-to" parameter.';
		classes: {ByteString};
		default: (Array with: 'text');
		cocoonDefaultDocumentation: 'By default only the text exporter is enable.';
		addCondition: [ :value | value isNotEmpty ];
		yourself