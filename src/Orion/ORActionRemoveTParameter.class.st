Class {
	#name : 'ORActionRemoveTParameter',
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
ORActionRemoveTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> name [ ^name
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
