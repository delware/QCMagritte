magrittes-descriptions
descriptionShowBatchFirstLast
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Show first/last';
		accessor: #showBatchFirstLast;
		default: false;
		priority: 110;
		yourself