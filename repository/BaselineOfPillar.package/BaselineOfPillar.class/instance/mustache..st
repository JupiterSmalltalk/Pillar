dependencies
mustache: spec
	spec
		for: #common
		do: [ 
			spec
				project: 'Mustache'
				with: [ 
					spec
						className: 'ConfigurationOfMustache';
						versionString: #stable;
						loads: #('Core');
						repository: 'http://www.smalltalkhub.com/mc/NorbertHartl/Mustache/main' ] ]