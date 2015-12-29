tests
testSupportFilesAreExported
	"I check that, when womeone creatd a new subconfiguration, the defaults configurations still exists."

	| ston folder config |
	folder := FileSystem memory root.
	(folder / 'foo.html') ensureCreateFile.
	ston := '{
		"support": [ "foo.html" ],
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
	self assert: (folder / 'bar' / 'foo.html') exists