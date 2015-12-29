transformers
transformerLaTeXCompilationOf: aCollection
	<pillarTransformer: 100 key: 'pdf' documentation:
		'I take the list of files exported and I launch a LaTeX compilation on them to get pdf.'>
	self flag: #clean.	"This is bad. Latter the phases should vanish and this transformer should be on the PRLaTeXWriter class instead of here."
	({PRLaTeXWriter.
	PRBeamerWriter} includes: self configuration outputType)
		ifTrue: [ 
			| script |
			self flag: #todo.	"remove the hard code of the name. This name is two tpmes here and on time on PRExportCommandLineHandler>>export."
			script := self configuration baseDirectory / 'pillarPostExport.sh'.
			self scriptShebangOn: script.
			script
				writeStreamDo: [ :exportScript | 
					exportScript setToEnd.
					self scriptBeginingOn: exportScript.
					self scriptForFiles: aCollection on: exportScript.
					self scriptEndingOn: exportScript ].	"Stdio stdout"
			self flag: #todo.	"Use Stdio when FileStream will be deprecated."
			FileStream stdout
				nextPutAll: 'To compile your LaTeX files launch "bash pillarPostExport.sh".';
				lf ].
	^ aCollection