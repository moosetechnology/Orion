Class {
	#name : 'ORActionMoveJavaReference',
	#superclass : 'ORActionMoveTReference',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaReference >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> mooseName: aValue [ mooseName := aValue
]
