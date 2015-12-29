accessing
name: aSymbol with: aBlock

	stream 	<< '<' << aSymbol << '>'.
	aBlock value.
	stream << '</' << aSymbol << '>'