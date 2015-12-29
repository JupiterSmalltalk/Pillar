tests
testDefaultConfigurationsExistsWithOthersConfigurations
	"I check that, when womeone creatd a new subconfiguration, the defaults configurations still exists."

	| ston output |
	ston := '{
		"support": [  ],
		"configurations":{
			"foo": { 
				"outputType": #mock
			 }
		}
}'.
	output := '' writeStream.
	(PRCocoonConfiguration newFromString: ston)
		inputString: 'Test';
		outputStream: output;
		export: 'mock'.
	self assert: output contents equals: 'Test'