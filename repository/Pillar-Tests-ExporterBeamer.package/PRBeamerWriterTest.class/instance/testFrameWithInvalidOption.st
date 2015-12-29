tests
testFrameWithInvalidOption
	| wiki |
	wiki := '${frame:title=Foo|option=bar}$'.
	self should: [ PRPillarParser parse: wiki ] raise: PRError