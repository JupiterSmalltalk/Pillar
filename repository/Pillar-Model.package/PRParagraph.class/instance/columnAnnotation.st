accessing
columnAnnotation
	"If I contains only one PRColumnAnnotation I return it. This is a hack, we will need to clean that."

	^ self isColumnBeginning
		ifTrue: [ self children first]
		ifFalse: [ PRError signal: 'This PRParagraph is not the beginning of a column.' ]