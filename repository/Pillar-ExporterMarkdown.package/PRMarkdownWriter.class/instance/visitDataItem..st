visiting-document
visitDataItem: anItem

	"super visitAll: anItem children.
	canvas newLine.
	canvas newLine."
	
	canvas tag
		name: 'dd'
		with: [ self writeRawDuring: [ self visitAll: anItem children ] ]