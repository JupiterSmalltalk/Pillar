tests
testThereIsABlankLineBetweenTextAndTable
  | text nLine |
  nLine := OSPlatform current lineEnding.
  text := 'This is a table:
| foo
| bar'.
  self
    assertWriting: (self parser parse: text)
    includesText: 'This is a table:' , nLine , nLine , '\begin{tab'