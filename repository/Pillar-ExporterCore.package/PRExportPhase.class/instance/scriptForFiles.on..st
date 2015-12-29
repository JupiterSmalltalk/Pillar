script generation
scriptForFiles: aCollection on: aWriteStream
	self flag: #todo.	"Maybe in the future it might be goot to not show the latex error if the compilation works fine and only show it when the compilation is not good. 
	
	function mypdflatex() {
  pillar_file="	"$1"	"
  basename=${pillar_file%.*}

  echo "	"Compiling PDF from $pillar_file..."	"
  lualatex --file-line-error --interaction=batchmode "	"\input"	" "	"$basename"	" 2>&1 1>/dev/null
  ret=$?
  if [[ $ret -ne 0 ]]; then
    cat "	"$basename"	".log
    echo "	"Can't generate the PDF!"	"
    exit 1
  fi
}
"
	aCollection
		do:
			[ :texFile | 
			| filePath command displayPath |
			displayPath := texFile relativeTo: self configuration baseDirectory.
			filePath := texFile relativeTo: self configuration outputDirectory.
			aWriteStream
				nextPutAll: 'echo Compiling PDF from ';
				nextPutAll: (displayPath printWithDelimiter: $/);
				lf;
				nextPutAll: 'cd ';
				nextPutAll: (filePath parent printWithDelimiter: $/);
				lf;
				nextPutAll: 'ln -s ';
				nextPutAll:
					((self configuration outputDirectory relativeTo: texFile parent) printWithDelimiter: $/);
				nextPutAll: ' root';
				lf.
			command := self configuration latexCommand format: (self latexCommandPropertiesFor: filePath).
			aWriteStream
				nextPutAll: command;
				lf;
				nextPutAll: command;
				lf;
				nextPutAll: 'rm -f *.{vrb,nav,snm,toc,out,aux,log,url}';
				lf;
				nextPutAll: 'rm -rf root';
				lf;
				nextPutAll: 'cd ';
				nextPutAll:
					((self configuration outputDirectory relativeTo: texFile parent) printWithDelimiter: $/);
				lf ]