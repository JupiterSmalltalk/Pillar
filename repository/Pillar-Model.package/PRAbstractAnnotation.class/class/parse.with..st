instance creation
parse: aString with: aParser
	| stream class tag |
	stream := (self copyWithoutMarkup: aString) readStream.
	tag := stream upTo: self markupParameterSeparator.
	class := self findClassAcceptingTag: tag.
	^ class parameters: (self parseParameters: stream upToEnd)