tests - Script
testScriptParameters
	super testScriptParameters.
	self
		assert: result
		equals:
			(GRSmallDictionary new
				at: 'value' put: 'foo';
				yourself)