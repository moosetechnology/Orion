Class {
	#name : 'ORActionAddTPrimitiveType',
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
ORActionAddTPrimitiveType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> name: aValue [ name := aValue
]

{ #category : 'method execution' }
ORActionAddTPrimitiveType >> run [

	| newEntity |
	newEntity := self orionModel newPrimitiveType.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> typedEntities: aValue [ typedEntities := aValue
]
