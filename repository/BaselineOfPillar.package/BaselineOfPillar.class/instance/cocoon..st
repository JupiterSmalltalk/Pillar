dependencies
cocoon: spec
	spec
		for: #common
		do: [ 
			spec
				project: 'Cocoon'
				with: [ 
					spec
						className: 'ConfigurationOfCocoon';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/Cocoon/main' ] ]