Class {
	#name : 'ORActionRenameTEnumValue',
	#superclass : 'ORActionRenameNamedEntity',
	#instVars : [
		'parentEnum',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> name [ ^name
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
