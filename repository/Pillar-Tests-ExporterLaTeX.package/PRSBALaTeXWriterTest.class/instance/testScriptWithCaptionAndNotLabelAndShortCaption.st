tests
testScriptWithCaptionAndNotLabelAndShortCaption
	| script |
	script := (PRScript content: 'foo')
					caption: 'a caption';
					shortCaption: 'short';
					language: PRHTMLScriptLanguage default;
					yourself.
	self assertWriting: script includesTexts: #('\begin{listing}[float, list text={short}]{html}{a caption}' 'foo')