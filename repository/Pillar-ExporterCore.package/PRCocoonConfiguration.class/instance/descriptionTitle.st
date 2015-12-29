descriptions
descriptionTitle
	<magritteDescription>
	^ MAStringDescription new
		accessor: #title;
		priority: 100;
		label: 'Title';
		cocoonDocumentation: 'Indicate the main title of the document.';
		default: 'No title';
		yourself