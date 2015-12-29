private
nest: aBlock
	
	nesting := nesting + 1.
	aBlock value: (canvas nestingEnvironmentAt: nesting).
	nesting := nesting - 1