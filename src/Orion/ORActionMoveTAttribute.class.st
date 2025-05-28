Class {
	#name : 'ORActionMoveTAttribute',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'parentType',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> name [ ^name
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
