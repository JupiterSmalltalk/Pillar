parsing
extractDataFrom: workingString
	| previousStop result |
	result := WriteStream on: Array new.
	result nextPutAll: (self class parseString: (workingString first: currentStart - 1)).
	result
		nextPut:
			(itemParser parse: (workingString copyFrom: currentStart to: currentStop + currentMarkup size - 1) with: documentParser).
	self flag: #todo.	"The two next lines are not so good. Maybe there is a better way to do it."
	itemParser = PRAbstractAnnotation
		ifTrue: [ ^ result contents ].
	previousStop := currentStop + currentMarkup size - 1.
	result nextPutAll: (documentParser parseTopText: (workingString allButFirst: previousStop)).
	^ result contents