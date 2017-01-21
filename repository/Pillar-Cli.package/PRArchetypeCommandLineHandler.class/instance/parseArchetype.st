parsing
parseArchetype
	self arguments ifEmpty: [ ^ nil ].
	^ self arguments last 
	