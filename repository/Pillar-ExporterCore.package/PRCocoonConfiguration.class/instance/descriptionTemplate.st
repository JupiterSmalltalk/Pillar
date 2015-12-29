descriptions
descriptionTemplate
	<magritteDescription>
	^ PRMagritteTemplateDescription new
		accessor: #template;
		priority: 100;
		label: 'Template to export';
		cocoonDocumentation: 'Indicate the overall structure of the exported documents.';
		default: PRTemplate new;
		kind: PRTemplate;
		cocoonDefaultDocumentation:
				'"==''\{\{\{content}}}''== (output the document as is, without any preamble or postamble)."';
		yourself