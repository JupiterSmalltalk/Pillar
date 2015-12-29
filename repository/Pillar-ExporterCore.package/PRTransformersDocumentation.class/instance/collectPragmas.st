initialize
collectPragmas
	| pragmas |
	pragmas := OrderedCollection new.
	self collectPragmaInSubclassesOf: PRPhase into: pragmas.
	self collectPragmaInSubclassesOf: PRDocumentWriter into: pragmas.
	^ pragmas