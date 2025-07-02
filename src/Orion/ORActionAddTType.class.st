Class {
	#name : 'ORActionAddTType',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'typeContainer',
		'typedEntities',
		'isStub',
		'sourceAnchor',
		'incomingReferences'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTType class >> createVersionnedEntitySelector [ ^ #newType
]

{ #category : 'method execution' }
ORActionAddTType class >> run [
	super run.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTType >> createVersionnedEntitySelector [ ^ #newType
]

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

{ #category : 'method execution' }
ORActionAddTType >> run [
	super run.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	^entity.
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
