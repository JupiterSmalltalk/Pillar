code port
port
"PRPillarGemstoneCodeTool port"
	| traits traitUsers |
	
	Transcript crShow: 'Flattening traits...'.
	traits := self traitsToFlatten.
	traitUsers := traits flatCollect: [ :trait | trait users ].
	self
		flattenTraits: traits;
		removeTraits: traits;
		recompileClasses: traitUsers.
	Transcript crShow: 'Flattening traits complete.'