visiting-document
visitTermItem: anItem
	| oldType |
	
	oldType := listType.
	listType := #description.
	
	canvas tag
		name: 'dt'
		with: [ self writeRawDuring: [ super visitTermItem: anItem ] ].
		
	listType := oldType