Class {
	#name : 'ORActionRemoveTLocalVariable',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> name [ ^name
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
