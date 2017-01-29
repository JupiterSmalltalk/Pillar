code port
recompileClasses: classes
	classes
		do: [ :class | 
			Transcript crShow: 'Recompiling class ' , class asString.
			class class recompile.
			class recompile ]