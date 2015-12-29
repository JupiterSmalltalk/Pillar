accessing
name: aSymbol options: options with: aBlock

	stream 	<< '<' << aSymbol << ' ' << options << '>'.
	aBlock value.
	stream << '</' << aSymbol << '>'