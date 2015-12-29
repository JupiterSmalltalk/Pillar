descriptions
descriptionOutputFile
	<magritteDescription>
	^ PRMagrittePathOrStreamDescription new
		priority: 100;
		accessor: #outputFile;
		label: 'Output File name';
		cocoonDocumentation: 'Indicate the path and the name of the output file in case we export several files into one file. This can also be a write stream.';
		cocoonDefaultDocumentation: 'A file named ''output''.';
		default: (RelativePath from: 'output');
		yourself