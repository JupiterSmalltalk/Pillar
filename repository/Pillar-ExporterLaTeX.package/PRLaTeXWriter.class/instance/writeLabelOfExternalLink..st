helpers
writeLabelOfExternalLink: anExternalLink
	| label |
	label := anExternalLink parameters at: 'label' ifAbsent: [ self referenceOfExternalLink: anExternalLink ].
	canvas command
		name: 'label';
		parameter: [ canvas raw: label ]