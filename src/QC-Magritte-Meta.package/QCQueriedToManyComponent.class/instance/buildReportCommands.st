initialization
buildReportCommands
	| retVal |
	retVal := super buildReportCommands.
	(self parent isNil or: [ self parent shouldChildDisplaySearchForm ])
		ifTrue: [ 
			retVal
				add: (QCCommand on: 'Hide options' condition: [ self canHideOptions ] action: [ self hideOptions ]);
				add: (QCCommand on: 'Report options...' condition: [ self canShowOptions ] action: [ self showOptions ]) ].
	^retVal