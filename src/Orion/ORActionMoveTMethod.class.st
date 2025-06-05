Class {
	#name : 'ORActionMoveTMethod',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'parentType',
		'signature',
		'declaredType',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTMethod >> createVersionnedEntitySelector [

	^ #newMethod
]

{ #category : 'accessing' }
ORActionMoveTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionMoveTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionMoveTMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionMoveTMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionMoveTMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]
