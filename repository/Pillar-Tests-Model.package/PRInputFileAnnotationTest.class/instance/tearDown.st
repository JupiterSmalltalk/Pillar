running
tearDown
	super tearDown.
	(directory / 'foo.pillar') delete.
	(directory / 'bar.pillar') delete.
	(directory / 'timoleon.pillar') delete