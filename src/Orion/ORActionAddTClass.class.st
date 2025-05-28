Class {
	#name : 'ORActionAddTClass',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'typeContainer',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTClass >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddTClass >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddTClass >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddTClass >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddTClass >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTClass >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddTClass >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddTClass >> run [

	| newEntity |
	newEntity := self orionModel newClass.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddTClass >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddTClass >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTClass >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddTClass >> typedEntities: aValue [ typedEntities := aValue
]
