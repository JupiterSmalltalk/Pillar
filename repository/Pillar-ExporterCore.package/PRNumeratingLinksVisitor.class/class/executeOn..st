accessing
executeOn: anInput
	self new
		configuration: anInput configuration;
		anchorsMapping: (anInput propertyAt: #anchorsMapping);
		start: anInput input.
	^ anInput