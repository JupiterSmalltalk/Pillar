visiting-document
visitAnnotatedParagraph: anAnnotatedParagraph

	"What are these breaks needed for?"	
	needsABreak ifTrue: [ canvas addInvisibleSeparator ].
	
	canvas htmlTag 
			name: 'p';
			parameterAt: 'class' put: anAnnotatedParagraph annotation ;
			with: [  super visitParagraph: anAnnotatedParagraph ].
			
	needsABreak := true.