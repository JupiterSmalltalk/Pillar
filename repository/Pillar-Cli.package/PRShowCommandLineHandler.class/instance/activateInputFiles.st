activation
activateInputFiles
	self arguments
		detect: [ :arg | arg = 'inputFiles' ]
		ifFound: [ 
			configuration inputFiles
				do: [ :file | 
					self stdout
						nextPutAll: file pathString;
						lf ].
			self exitSuccess ]