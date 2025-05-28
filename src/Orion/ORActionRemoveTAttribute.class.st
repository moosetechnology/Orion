Class {
	#name : 'ORActionRemoveTAttribute',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> name [ ^name
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
