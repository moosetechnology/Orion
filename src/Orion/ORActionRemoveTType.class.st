"
I remove a new FamixTType in a MooseModel
I need the following properties of the new type

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTType',
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
ORActionRemoveTType class >> createVersionnedEntitySelector [ ^ #newType
]

{ #category : 'method execution' }
ORActionRemoveTType class >> run [
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
ORActionRemoveTType >> createVersionnedEntitySelector [ ^ #newType
]

{ #category : 'accessing' }
ORActionRemoveTType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveTType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveTType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTType >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTType >> run [
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
ORActionRemoveTType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveTType >> typedEntities: aValue [ typedEntities := aValue
]
