dependencies
grease: spec
	spec
		for: #pharo
		do: [ 
			spec
				project: 'Grease'
				with: [ 
					spec
						className: 'ConfigurationOfGrease';
						versionString: #stable;
						loads: #('Core');
						repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ] ].
	spec
		for: #gemstone
		do: [ 
			spec
				baseline: 'Grease'
				with: [ 
					spec
						loads: #('Core');
						repository: 'github://GsDevKit/Grease:master/repository' ] ]