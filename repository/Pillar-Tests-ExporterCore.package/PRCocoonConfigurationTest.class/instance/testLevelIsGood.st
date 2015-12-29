tests
testLevelIsGood
	| configuration header |
	configuration := PRCocoonConfiguration new.
	configuration
		level1:
			((PRLevelNumberConfiguration with: (Dictionary with: 'numbering' -> true))
				level: 1;
				configuration: configuration;
				yourself).
	configuration
		level2:
			((PRLevelNumberConfiguration with: (Dictionary with: 'numbering' -> false))
				level: 2;
				configuration: configuration;
				yourself).
	header := PRHeader new
		level: 2;
		add: (PRText content: 'foo');
		yourself.
	self deny: (configuration levelConfigurationFor: header) numbering