visiting-document
visitDocument: aDocument
	aDocument children do: [ :documentItem | self manageItem: documentItem ].
	self possibleTransformationEnding.
	aDocument setChildren: newChildren asArray