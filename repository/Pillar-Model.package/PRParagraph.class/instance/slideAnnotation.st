accessing
slideAnnotation
	"If I contains only one PRSlideTitleAnnotation I return it. This is a hack, we will need to clean that."

	^ self isSlideBeginning
		ifTrue: [ self children first]
		ifFalse: [ PRError signal: 'This PRParagraph is not the beginning of a slide.' ]