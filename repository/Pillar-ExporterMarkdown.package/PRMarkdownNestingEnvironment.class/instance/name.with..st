accessing
name: aSymbol with: aBlock
	| childrenRendering lines |
	
	stream 
		newLine;
		newLine;
		<< aSymbol.
		
	childrenRendering := String streamContents: aBlock.
	lines := childrenRendering lines.
	lines do: [ :line | 
		stream newLine.
		nesting timesRepeat: [ stream << '    ' ].
		stream << line ].

	stream 
		<< aSymbol;
		newLine;
		newLine.