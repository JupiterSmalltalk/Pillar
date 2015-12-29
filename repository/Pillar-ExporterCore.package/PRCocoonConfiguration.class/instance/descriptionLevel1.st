descriptions
descriptionLevel1
	<magritteDescription>
	^ PRMagritteHeaderLevelDescription new
		accessor: #level1;
		priority: 100;
		label:
				'Header level 1 configuration';
		cocoonDocumentation: 'A dictionary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 1 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)';
		cocoonDefaultDocumentation:
				'A PRNumberingLevelConfiguration which say Pillar need to numbering level 1 titles and to render them with a roman number.';
		default:
				((PRLevelRomanConfiguration with: (Dictionary with: 'numbering' -> true with: 'size' -> 1))
						level: 1;
						configuration: self;
						yourself);
		classes: PRNumberingLevelConfiguration allSubclasses;
		level: 1;
		yourself