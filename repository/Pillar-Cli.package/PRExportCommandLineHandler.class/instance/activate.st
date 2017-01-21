activation
activate
	super activate.
	self
		optionAt: 'to'
		ifPresent: [ :subconf | configuration defaultExporters: {subconf} ].
	self parseInputFile.
	self export.
	self exitSuccess