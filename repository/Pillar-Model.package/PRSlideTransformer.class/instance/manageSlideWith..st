private
manageSlideWith: documentItem
	documentItem isHeader
		ifTrue: [ 
			self pushSlideIfNeeded.
			newChildren add: documentItem ]
		ifFalse: [ tmpSlide add: documentItem ]