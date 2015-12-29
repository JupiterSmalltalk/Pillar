descriptions
descriptionOutputDirectory
	<magritteDescription>
	^ MADirectoryDescription new
		accessor: #outputDirectory;
		priority: 100;
		label: 'Output Directory where we export.';
		cocoonDocumentation: 'Indice where we should export the files.';
		cocoonDefaultDocumentation: 'The base Directory of the export';
		default: self baseDirectory;
		defaultDirectory: self baseDirectory;
		kind: FileReference;
		yourself