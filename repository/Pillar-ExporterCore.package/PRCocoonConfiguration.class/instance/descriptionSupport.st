descriptions
descriptionSupport
	<magritteDescription>
	^ CCMagritteToManyRelationFileMatchingDescription new
		defaultDirectory: self baseDirectory;
		priority: 100;
		accessor: #support;
		label: 'Support files.';
		cocoonDocumentation:
			'I am a collection of support files. I can match some names as ''''Chapter1/figures'''' or ''''\*/figures'''' or ''''Chapter#/figures'''' or ''''\*\*/figures'''' or ''''\*\*/\*.css''''. These files will get copied inside the outputDirectory folder.';
		classes: {FileReference};
		cocoonDefaultDocumentation: 'By default nothing is copied.';
		default: Set new;
		yourself