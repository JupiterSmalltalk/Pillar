private
createNewSlideWith: documentItem
	| slideAnnotation |
	slideAnnotation := documentItem slideAnnotation.	"We do that because our slideAnnotation could be inside a paragraph."
	tmpSlide := (PRSlide titled: (slideAnnotation parameters at: 'title' ifAbsent: [ 'New Slide' ]))
		label: (slideAnnotation parameters at: 'label' ifAbsent: [ nil ])