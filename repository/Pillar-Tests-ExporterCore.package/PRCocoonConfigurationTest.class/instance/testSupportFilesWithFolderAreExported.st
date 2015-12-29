tests
testSupportFilesWithFolderAreExported
	"I check that, when womeone creatd a new subconfiguration, the defaults configurations still exists."

	| ston folder config |
	folder := FileSystem memory root.
	(folder / 'bar2') ensureCreateDirectory.
	(folder / 'bar2' / 'foo.html') ensureCreateFile.
	ston := '{
		"support": [ "bar2/foo.html" ],
		"outputDirectory": "bar"
}'.
	config := PRCocoonConfiguration new
		baseDirectory: folder;
		yourself.
	CCMagritteDictionaryReader
		writeDictionary: (STON fromString: ston)
		toConfiguration: config.
	config
		inputString: 'Test';
		outputStream: String new writeStream;
		export: #text.
	self assert: (folder / 'bar' / 'bar2' / 'foo.html') exists