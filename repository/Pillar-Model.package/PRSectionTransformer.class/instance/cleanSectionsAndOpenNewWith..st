private
cleanSectionsAndOpenNewWith: documentItem
	documentItem level <= MaxDepthLevel
		ifTrue: [ 
			self cleanSectionsUnderLevel: documentItem level.
			sections at: documentItem level put: (PRSection with: documentItem) ]
		ifFalse: [ self currentSection add: documentItem ]