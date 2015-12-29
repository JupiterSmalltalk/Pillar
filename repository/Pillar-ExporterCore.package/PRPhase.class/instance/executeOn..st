executing
executeOn: anInput
	| output |
	output := self actionOn: anInput.
	output := self transform: output.
	^ output