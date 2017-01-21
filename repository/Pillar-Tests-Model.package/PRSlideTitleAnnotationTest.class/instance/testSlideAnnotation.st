tests
testSlideAnnotation
	| slide |
	slide := PRSlideTitleAnnotation
		parameters:
			(SmallDictionary new
				at: 'title' put: 'Foo';
				yourself).
	self assert: slide slideAnnotation equals: slide