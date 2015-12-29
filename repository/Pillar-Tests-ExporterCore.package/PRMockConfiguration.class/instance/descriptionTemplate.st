descriptions
descriptionTemplate
	<magritteDescription>
	^ PRMagritteTemplateDescription new
		accessor: #template;
		priority: 100;
		label: 'Template to export';
		cocoonDocumentation: 'Indicate the overall structure of the exported documents.';
		default: (PRTemplate for: self class specificWriter defaultTemplate);
		kind: PRTemplate;
		yourself