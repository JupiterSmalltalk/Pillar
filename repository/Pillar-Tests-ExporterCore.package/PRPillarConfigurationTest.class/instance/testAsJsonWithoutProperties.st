tests
testAsJsonWithoutProperties
	| conf expected |
	conf := PRPillarConfiguration new.
	expected := '' writeStream
		<< '{';
		<< '}';
		yourself.
	self assert: conf asJson equals: expected contents