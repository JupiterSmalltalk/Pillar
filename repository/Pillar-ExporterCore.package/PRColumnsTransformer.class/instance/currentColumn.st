accessing
currentColumn
	"If there is no current column begin I return the columns environment and I raise a Warning."

	^ tmpColumns children isNotEmpty
		ifTrue: [ tmpColumns children last ]
		ifFalse: [ tmpColumns ]