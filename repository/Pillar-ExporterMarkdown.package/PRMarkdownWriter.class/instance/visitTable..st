visiting-document
visitTable: aTableCell

	stream newLine.
	stream newLine.
	firstRow := true.
	super visitTable: aTableCell.
	stream newLine.