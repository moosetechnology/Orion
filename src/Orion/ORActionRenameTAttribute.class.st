Class {
	#name : 'ORActionRenameTAttribute',
	#superclass : 'ORActionRenameNamedEntity',
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
ORActionRenameTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> name [ ^name
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
