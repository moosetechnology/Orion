Class {
	#name : 'ORActionMoveTLocalVariable',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> name [ ^name
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
