accessing
latexCommandPropertiesFor: aFilePath
	^ Dictionary
		with: 'directory' -> (aFilePath parent printWithDelimiter: $/)
		with: 'filePath' -> (aFilePath printWithDelimiter: $/)
		with: 'fileName' -> aFilePath basename
		with: 'fileNameWithoutExtension' -> aFilePath basenameWithoutExtension