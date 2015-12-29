instance-creation
executeOn: anInput with: aConfiguration
	^ self new
		configuration: aConfiguration;
		executeOn: anInput