"
I remove a FamixTEnum in a MooseModel
I need the following properties of the  enum

-`typeContainer`
-`typedEntities`
-`isStub`
-`sourceAnchor`
-`incomingReferences`
-`enumValues`
"
Class {
	#name : 'ORActionRemoveTEnum',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'typeContainer',
		'typedEntities',
		'isStub',
		'sourceAnchor',
		'incomingReferences',
		'enumValues'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTEnum class >> createVersionnedEntitySelector [ ^ #newEnum
]

{ #category : 'method execution' }
ORActionRemoveTEnum class >> run [
	super run.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity incomingReferences: nil.
	entity enumValues: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTEnum >> createVersionnedEntitySelector [ ^ #newEnum
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> enumValues [ ^enumValues
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> enumValues: aValue [ enumValues := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTEnum >> run [

	super run.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity incomingReferences: nil.
	entity enumValues: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> typedEntities: aValue [ typedEntities := aValue
]
