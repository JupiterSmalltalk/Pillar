as yet unclassified
name: name reference: url caption: caption width: width
	| index choppedURL |
	index := url indexOf: $:.
	choppedURL := url copyFrom: index + 3 to: url size.
	stream << '<a name="' << name << '"></a>'.
	width isEmptyOrNil
		ifTrue: [ stream << '![' << name << '](' << choppedURL << ' "' << caption << '")' ]
		ifFalse: [ stream << '<figure><img src="' << choppedURL << '" width="' << width << '%"></img><figcaption>' << caption << '</figcaption></figure>' ]