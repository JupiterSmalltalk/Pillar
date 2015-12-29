visiting-document
visitUnorderedList: aList
	| oldType oldNewLine |
	
	(needsABreak and: [ nesting = 0 ]) ifTrue: [ canvas addInvisibleSeparator ].
	
	oldType := listType.
	listType := #unordered.
	nesting := nesting + 1.
	stream newLine.
	oldNewLine := needNewLine.
	needNewLine ifTrue: [ stream newLine ].
	needNewLine := false.
	
	super visitUnorderedList: aList .
	
	needNewLine := oldNewLine.
	listType := oldType.
	nesting := nesting - 1.
	
	needsABreak := true.