accessing
iconNamed: aSymbol
	"Returns the icon with the given name"
	
	^(self iconCache) 
		at: aSymbol 
		ifAbsentPut: [ self perform: aSymbol ]