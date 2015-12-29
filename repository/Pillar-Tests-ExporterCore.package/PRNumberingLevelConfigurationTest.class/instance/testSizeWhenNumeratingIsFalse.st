tests
testSizeWhenNumeratingIsFalse
	| headerConfig |
	headerConfig := PRNumberingLevelConfiguration with: ( Dictionary with: 'numbering' -> false with: 'size' -> 0).
	self assert: (headerConfig size) equals: 0.
	
	headerConfig := PRNumberingLevelConfiguration with: ( Dictionary with: 'numbering' -> false with: 'size' -> 3).
	self assert: (headerConfig size) equals: 0