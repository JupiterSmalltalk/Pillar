tests
testSlideAnnotation
	| slide |
	slide := PRSlideTitleAnnotation
		parameters:
			(GRSmallDictionary new
				at: 'title' put: 'Foo';
				yourself).
	self assert: slide slideAnnotation equals: slide