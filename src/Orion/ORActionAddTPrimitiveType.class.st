Class {
	#name : 'ORActionAddTPrimitiveType',
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
ORActionAddTPrimitiveType class >> createVersionnedEntitySelector [ ^ #newPrimitiveType
]

{ #category : 'method execution' }
ORActionAddTPrimitiveType class >> run [
	super run.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTPrimitiveType >> createVersionnedEntitySelector [ ^ #newPrimitiveType
]

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

{ #category : 'method execution' }
ORActionAddTPrimitiveType >> run [
	super run.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	^entity.
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
