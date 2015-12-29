descriptions
descriptionDefaultScriptLanguage
	<magritteDescription>
	^ PRMagritteScriptLanguageDescription new
		priority: 100;
		accessor: #defaultScriptLanguage;
		label: 'Default language for scripts.';
		cocoonDocumentation:
				'Indicate the (programming) language in scripts when none is specified.
This language is used for syntax highlighting.';
		default: PRUnspecifiedScriptLanguage default;
		cocoonDefaultDocumentation: 'An unspecifiedScriptLanguage';
		yourself