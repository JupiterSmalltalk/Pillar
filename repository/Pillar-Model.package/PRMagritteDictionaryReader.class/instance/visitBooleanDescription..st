visiting-description
visitBooleanDescription: aDescription
	self tryToAddFrom: aDescription withInterpretation: [ :value | self interpretAsBoolean: value with: aDescription ]