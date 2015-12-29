activation
generateSummary
	(baseDirectory / 'SUMMARY.md') asFileReference
		writeStreamDo: [ :stream | 
			stream << '# Summary' << String lf << String lf.
			stream << 'Abstract (to be done)' << String lf << String lf.
			configuration inputFiles
				do: [ :inputFile | 
					| document title |
					document := configuration parseFile: inputFile.
					title := document title.
					stream << '* [' << title << ']('.
					(inputFile , PRMarkdownWriter fileExtension relativeTo: baseDirectory) printOn: stream delimiter: $/.
					stream << ')' << String lf ] ]