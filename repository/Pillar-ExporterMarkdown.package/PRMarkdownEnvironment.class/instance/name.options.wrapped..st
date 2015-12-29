accessing
name: aSymbol options: options wrapped: aBlock
	| childrenRendering lines |
	
	stream 
		newLine;
		newLine;
		<< aSymbol ; 
		<< options.
		
	childrenRendering := String streamContents: aBlock.
	lines := childrenRendering lines.
	lines do: [ :line | 
		stream newLine.
		stream << line ].

	stream 
		newLine;
		<< aSymbol;
		newLine;
		newLine.