tests
testDefaultTemplate
	| output bindings |
	bindings := PRCocoonConfiguration new
		propertyAt: 'content' put: 'chapeau';
		yourself.
	output := self actualClass new expandTemplateWithBindings: bindings.
	self assert: output equals: 'chapeau'