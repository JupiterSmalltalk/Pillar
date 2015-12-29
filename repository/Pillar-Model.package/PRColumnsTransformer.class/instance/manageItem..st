private
manageItem: documentItem
	documentItem isColumnsBeginning
		ifTrue: [ self createNewColumns ]
		ifFalse: [ 
			documentItem isColumnBeginning
				ifTrue: [ self createNewColumnWith: documentItem ]
				ifFalse: [ 
					documentItem isColumnsEnding
						ifTrue: [ self pushColumns ]
						ifFalse: [ self addItem: documentItem ] ] ]