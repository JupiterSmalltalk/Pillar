tests
testThereIsABlankLineBetweenTextAndTable
	| text nLine |
	nLine := Smalltalk os lineEnding.
	text := 'This is a table:
| foo
| bar'.
	self
		assertWriting: (PRPillarParser parse: text)
		includesText: 'This is a table:' , nLine , nLine , '\begin{tab'