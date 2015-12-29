tests
testScriptWithCorrectNewLines
	| item |
	item := (PRScript content: 'foo')
		label: 'myScript';
		caption: 'a caption';
		yourself.
	self
		assertWriting: item
		includesText:
			'\begin{script}[myScript]{a caption}' , self configuration newLine , 'foo' , self configuration newLine , '\end{script}'