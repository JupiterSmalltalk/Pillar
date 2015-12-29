actions
export: aConfiguration
	| input |
	input := nil.	"The input is nil because the first phase has the responsability to create the list of files from the configuration."
	phases do: [ :phase | input := phase executeOn: input with: aConfiguration ]