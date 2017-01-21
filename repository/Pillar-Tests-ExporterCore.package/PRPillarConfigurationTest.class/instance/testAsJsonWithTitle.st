tests
testAsJsonWithTitle
	| conf expected |
	conf := PRPillarConfiguration new
		title: 'titre';
		yourself.
	expected := '' writeStream
		<< '{';
		<< '"title":';
		<< '"titre"';
		<< '}';
		yourself.
	self assert: conf asJson equals: expected contents