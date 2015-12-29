action
generateDoc
	| pragmas |
	pragmas := self collectPragmas.
	pragmas sort: [ :p1 :p2 | p1 arguments second < p2 arguments second ].
	pragmas := self removeDuplicated: pragmas.
	stream
		lf;
		lf;
		nextPutAll: '""Transformers and keywords to disable them:""';
		lf;
		lf.
	self generateDocumentationOf: pragmas