tests
testAsJsonWithTitleWithAutoAnchor
	| conf expected |
	conf := PRPillarConfiguration new
		title: 'titre';
		autoAnchor: true;
		yourself.
	expected := '' writeStream
		<< '{';
		<< '"title":';
		<< '"titre",';
		<< '"autoAnchor":';
		<< 'true';
		<< '}';
		yourself.
	self assert: conf asJson equals: expected contents