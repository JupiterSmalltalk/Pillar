visiting-document
visitListItem: anItem
	| name |
	
	name := listType = #ordered
		ifTrue: [ 
			nextItemIndex := nextItemIndex +1.
			(nextItemIndex - 1) asString, '. ' ]
		ifFalse: [ 
			listType = #description
				ifTrue: [ '' ]
				ifFalse: [ '- ' ]].

	name ifNotEmpty: [ | result |
		result := ''.
		nesting -1 timesRepeat: [ result := result, '    ' ].
		name := result, name ].
	
	canvas command
		name: name;
		parameter: [ super visitListItem: anItem ]