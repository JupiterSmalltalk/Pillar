private
manageItem: documentItem
	^ documentItem isSlideBeginning
		ifTrue: [ self pushSlideIfNeeded. self createNewSlideWith: documentItem ]
		ifFalse: [ 
			self aSlideIsOpen
				ifTrue: [ self manageSlideWith: documentItem ]
				ifFalse: [ newChildren add: documentItem ] ]