tests - Text
testRawInvalid
	super testRawInvalid.
	self assert: result equals: (PRRaw content: 'invalid:foo')