tests
testSlideAnnotation
  | slide |
  slide := PRSlideTitleAnnotation
    parameters:
      (Dictionary new
        at: 'title' put: 'Foo';
        yourself).
  self assert: slide slideAnnotation equals: slide