Class {
	#name : 'ORActionMoveTParameter',
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
ORActionMoveTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionMoveTParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> name [ ^name
]

{ #category : 'accessing' }
ORActionMoveTParameter >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionMoveTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
