adding
addItem: documentItem
	self columnsIsInCreation
		ifTrue: [ self currentColumn add: documentItem ]
		ifFalse: [ newChildren add: documentItem ]