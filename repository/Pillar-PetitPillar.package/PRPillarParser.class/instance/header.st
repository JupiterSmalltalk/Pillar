grammar - Header
header
	"I create a PRHeader"

	^ super header ==> [ :array | PRHeader withAll: (array second ifNil: [ {} ]) level: array first size ]