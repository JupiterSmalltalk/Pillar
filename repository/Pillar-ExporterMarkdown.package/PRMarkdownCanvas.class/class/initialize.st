class initialization
initialize
	MarkdownCharacters := Dictionary new.
	
	'\`*_{}[]()#+-.!|' do: [ :c |
		MarkdownCharacters
			at: c put: '\', c asString ]