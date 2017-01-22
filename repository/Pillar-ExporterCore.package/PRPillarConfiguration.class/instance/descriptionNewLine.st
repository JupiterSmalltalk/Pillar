descriptions
descriptionNewLine
  <magritteDescription>
  ^ PRMagritteNewLineDescription new
    accessor: #'newLine';
    priority: 100;
    label: 'Representation of a new line.';
    cocoonDocumentation:
        'The string that separates lines in the exported document.
	This is often either LF or CR\+LF but any string is possible.';
    default: GRPlatform current newline;
    cocoonDefaultDocumentation: 'Depend on the operating system.';
    yourself