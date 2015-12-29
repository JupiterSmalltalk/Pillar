activation
readConfigurationFromFile: confFile
	^ [ PRCocoonConfiguration newFromFile: confFile extendedWith: self argumentsForConfigurationExtension ]
		on: STONReaderError
		do: [ :error | self exitFailure: error messageText ]