Class {
	#name : 'ORActionAddTType',
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
ORActionAddTType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddTType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTType >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTType >> name: aValue [ name := aValue
]

{ #category : 'method execution' }
ORActionAddTType >> run [

	| newEntity |
	newEntity := self orionModel newType.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddTType >> typedEntities: aValue [ typedEntities := aValue
]
