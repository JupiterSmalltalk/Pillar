actions
copySupportFile
	"I copy all the support files to the output directory."

	self configuration
		support:
			(self configuration support reject: [ :each | each isDirectory ]).

	"We create the directories before the files to avoir a FileDoesNotExistException."
	self configuration support
		do:
			[ :file | 
			| dest |
			dest := self outputFor: file.
			dest ensureDelete.
			dest parent ensureCreateDirectory.
			file copyTo: dest ]