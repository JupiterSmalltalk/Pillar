descriptions
descriptionSeparateOutputFiles
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #separateOutputFiles;
		priority: 100;
		label: 'Export with separate output files.';
		cocoonDocumentation: 'Indicate whether each input file must be exported separately or not.';
		default: false;
		yourself