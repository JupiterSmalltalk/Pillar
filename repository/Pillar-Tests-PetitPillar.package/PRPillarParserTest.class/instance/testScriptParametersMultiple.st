tests - Script
testScriptParametersMultiple
	super testScriptParametersMultiple.
	self
		assert: result
		equals:
			(GRSmallDictionary new
				at: 'value' put: 'foo';
				at: 'bar' put: nil;
				yourself)