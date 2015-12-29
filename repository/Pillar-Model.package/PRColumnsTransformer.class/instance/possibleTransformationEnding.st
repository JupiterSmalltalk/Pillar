private
possibleTransformationEnding
	self columnsIsInCreation
		ifTrue: [ PRError signal: 'Missing ending columns annotation. Please use ${endColumns}$ at the end of the columns environment.' ]