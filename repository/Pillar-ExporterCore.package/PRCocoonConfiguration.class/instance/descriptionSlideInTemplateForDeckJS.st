descriptions
descriptionSlideInTemplateForDeckJS
	<magritteDescription>
	^ MANumberDescription new
		accessor: #slideInTemplateForDeckJS;
		priority: 100;
		label: 'Number of slides in Template';
		cocoonDocumentation: 'Indicate the number of slide created on the template to help the creation of the anchors.';
		default: 1;
		isInteger;
		min: -7 max: 7;
		yourself