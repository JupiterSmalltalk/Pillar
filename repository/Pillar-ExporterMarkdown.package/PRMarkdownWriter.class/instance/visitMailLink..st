visiting-document
visitMailLink: aLink

	canvas tag
		name: 'a'
		options: 'href="', aLink unscrambledUrl, '"'
		with: [ super visitMailLink: aLink ]