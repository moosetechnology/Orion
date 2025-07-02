"
I remove a new FamixTPrimitiveType in a MooseModel
I need the following properties of the new primitivetype

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTPrimitiveType',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTPrimitiveType class >> createVersionnedEntitySelector [ ^ #newPrimitiveType
]

{ #category : 'method execution' }
ORActionRemoveTPrimitiveType class >> run [
	super run.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity incomingReferences: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTPrimitiveType >> createVersionnedEntitySelector [ ^ #newPrimitiveType
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTPrimitiveType >> run [
	super run.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity incomingReferences: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> typedEntities: aValue [ typedEntities := aValue
]
