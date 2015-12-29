tests
testHeader
	| item |
	item := PRHeader new
		level: 1;
		add: (PRText content: 'foo');
		yourself.
	self configuration
		level1:
			((PRLevelNumberConfiguration with: (Dictionary with: 'numbering' -> false))
				level: 1;
				configuration: self configuration;
				yourself).
	self assertWriting: item includesTexts: {self level1HeaderWithFoo}.
	self configuration headingLevelOffset: 2.
	self assertWriting: item includesTexts: {self level3HeaderWithFoo}