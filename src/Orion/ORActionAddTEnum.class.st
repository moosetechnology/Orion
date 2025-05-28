Class {
	#name : 'ORActionAddTEnum',
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
ORActionAddTEnum >> enumValues [ ^enumValues
]

{ #category : 'accessing' }
ORActionAddTEnum >> enumValues: aValue [ enumValues := aValue
]

{ #category : 'accessing' }
ORActionAddTEnum >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddTEnum >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTEnum >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTEnum >> name: aValue [ name := aValue
]

{ #category : 'method execution' }
ORActionAddTEnum >> run [

	| newEntity |
	newEntity := self orionModel newEnum.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTEnum >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTEnum >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddTEnum >> typedEntities: aValue [ typedEntities := aValue
]
