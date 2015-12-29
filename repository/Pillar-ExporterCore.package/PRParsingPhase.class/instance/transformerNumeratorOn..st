transformers
transformerNumeratorOn: aCollection
	<pillarTransformer: 10 key: 'numerator' documentation:
		'I visit the file and add numbers to the titles, scripts, figures, and internals links.'>
	| anchors numerator |
	anchors := Dictionary new.
	numerator := PRNumeratingVisitor with: self configuration.
	aCollection do: [ :each | anchors := numerator start: each ].
	aCollection do: [ :each | (PRNumeratingLinksVisitor with: anchors) start: each ].
	^ aCollection