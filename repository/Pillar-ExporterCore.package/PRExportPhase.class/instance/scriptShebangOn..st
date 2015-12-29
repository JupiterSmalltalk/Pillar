transformers
scriptShebangOn: script
	script exists
		ifFalse: [ 
			script
				ensureCreateFile;
				writeStreamDo: [ :exportScript | 
							exportScript
								nextPutAll: '#!/usr/bin/env bash';
								lf ] ]