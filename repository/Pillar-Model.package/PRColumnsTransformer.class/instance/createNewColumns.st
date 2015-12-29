private
createNewColumns
	self columnsIsInCreation
		ifTrue: [ PRError signal: 'You have to close a columns envrionment before you open an other. Use the ${endColumns}$ tag please.' ]
		ifFalse: [ tmpColumns := PRColumns new ]