descriptions
descriptionLatexCommand
	<magritteDescription>
	^ MAStringDescription new
		accessor: #latexCommand;
		priority: 100;
		label: 'Command latex';
		cocoonDocumentation:
			'I indicate which latex commad use on the script I generate in order to generate pdf files. I can match "{fileName}" to specifie the name of the file, "{fileNameWithoutExtension}", "{directory}" to give a relative path to the directory that contains the file from the output directory and "{filePath}" to get the path of the file from the outputDirectory. If you need more parameters just ask us to add them.';
		default: 'pdflatex {fileName}';
		yourself