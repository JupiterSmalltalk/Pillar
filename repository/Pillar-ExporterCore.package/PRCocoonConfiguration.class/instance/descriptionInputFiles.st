descriptions
descriptionInputFiles
	<magritteDescription>
	^ CCMagritteToManyRelationFileDescription new
		defaultDirectory: self baseDirectory;
		priority: 100;
		accessor: #inputFiles;
		label:
				'Input files to export.';
		cocoonDocumentation: 'List the Pillar files that must be exported (can be a FileReference, a relative path from baseDirectory or an absolute path).';
		classes: {FileReference};
		default: Array new;
		yourself