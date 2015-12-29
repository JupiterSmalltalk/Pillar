visiting-document
visitOrderedList: aList
	| oldType oldNewLine |
	
	(needsABreak and: [ nesting = 0 ]) ifTrue: [ canvas addInvisibleSeparator ].
	
	oldType := listType.
	listType := #ordered.
	nesting := nesting + 1.
	stream newLine.
	oldNewLine := needNewLine.
	needNewLine ifTrue: [ stream newLine ].
	needNewLine := false.
	nextItemIndex := 1.
	
	super visitOrderedList: aList .
	
	needNewLine := oldNewLine.
	listType := oldType.
	nesting := nesting - 1.
	
	needsABreak := true.