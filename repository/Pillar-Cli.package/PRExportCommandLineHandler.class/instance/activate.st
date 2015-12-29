activation
activate
	super activate.
	self
		optionAt: 'to'
		ifPresent: [ :subconf | configuration defaultExporters: {subconf} ].
	self parseInputFiles.
	self export.
	self exitSuccess