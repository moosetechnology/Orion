Class {
	#name : 'ORActionRenameTParameter',
	#superclass : 'ORActionRenameNamedEntity',
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
ORActionRenameTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRenameTParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> name [ ^name
]

{ #category : 'accessing' }
ORActionRenameTParameter >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRenameTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
