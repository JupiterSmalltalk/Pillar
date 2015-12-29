tests-parsing
testSlideAnnotation
	| item slide |
	slide := PRSlideTitleAnnotation
		parameters:
			(GRSmallDictionary new
				at: 'title' put: 'Foo';
				yourself).
	item := PRParagraph new add: slide.
	self assert: item slideAnnotation equals: slide.
	item := PRParagraph new add: (PRText content: 'Foo').
	self should: [ item slideAnnotation ] raise: PRError