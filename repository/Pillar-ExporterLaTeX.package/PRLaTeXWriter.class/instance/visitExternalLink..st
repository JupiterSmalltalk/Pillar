visiting-document
visitExternalLink: anExternalLink
	| text reference |
	reference := self referenceOfExternalLink: anExternalLink.
	text := anExternalLink text.
	(text isEmptyOrNil or: [ reference = text ])
		ifTrue: [ 
			canvas command
				name: 'url';
				parameter: reference ]
		ifFalse: [ 
			canvas command
				name: 'href';
				parameter: reference;
				parameter: [ canvas nextPutAll: text ] ]