descriptions
descriptionOutputType
	<magritteDescription>
	^ MAClassDescription new
		accessor: #outputType;
		priority: 100;
		label: 'Output Type.';
		cocoonDocumentation: 'An Mock Writer';
		default: self class specificWriter;
		addCondition: [ :value | (PRDocumentWriter allSubclasses select: [ :klass | klass isAbstract not ]) contains: [ :each | each = value ] ];
		yourself