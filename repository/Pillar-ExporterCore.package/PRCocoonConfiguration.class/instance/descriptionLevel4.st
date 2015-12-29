descriptions
descriptionLevel4
	<magritteDescription>
	^ PRMagritteHeaderLevelDescription new
		accessor: #level4;
		priority: 103;
		label: 'Header level 4 configuration';
		cocoonDocumentation:
				'A dictionnary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 4 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)';
		cocoonDefaultDocumentation:
				'A PRNumberingLevelConfiguration which say Pillar need to numbering level 4 titles and to render them with a letter.';
		default:
				((PRLevelLetterConfiguration with: (Dictionary with: 'numbering' -> true with: 'size' -> 4))
						level: 4;
						configuration: self;
						yourself);
		classes: PRNumberingLevelConfiguration allSubclasses;
		level: 4;
		yourself