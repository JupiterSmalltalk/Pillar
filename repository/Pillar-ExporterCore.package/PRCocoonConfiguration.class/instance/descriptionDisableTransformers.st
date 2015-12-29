descriptions
descriptionDisableTransformers
	<magritteDescription>
	^ MAToManyScalarRelationDescription new
		priority: 100;
		accessor: #disableTransformers;
		label: 'List of disable transformers.';
		cocoonDocumentation: 'List of transformers which need to be disable for the export.' , (PRTransformersDocumentation on: String new writeStream) contents;
		classes: {ByteString};
		default: Array new;
		cocoonDefaultDocumentation: 'By default all the transformers are active.';
		yourself