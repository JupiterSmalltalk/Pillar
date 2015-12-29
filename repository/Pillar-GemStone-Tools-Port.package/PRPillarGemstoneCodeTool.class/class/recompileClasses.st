code port
recompileClasses
	self traitClasses
		do: [ :class | 
			class class recompile.
			class recompile ]