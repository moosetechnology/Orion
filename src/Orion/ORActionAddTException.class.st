Class {
	#name : 'ORActionAddTException',
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
ORActionAddTException >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddTException >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionAddTException >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddTException >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionAddTException >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddTException >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddTException >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTException >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddTException >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddTException >> run [

	| newEntity |
	newEntity := self orionModel newException.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddTException >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddTException >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionAddTException >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTException >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddTException >> typedEntities: aValue [ typedEntities := aValue
]
