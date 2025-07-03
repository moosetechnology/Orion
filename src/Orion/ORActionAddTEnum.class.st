"
I add a FamixTEnum in a MooseModel
I need the following properties of the  enum

-`typeContainer`
-`typedEntities`
-`isStub`
-`sourceAnchor`
-`incomingReferences`
-`enumValues`
"
Class {
	#name : 'ORActionAddTEnum',
	#superclass : 'ORActionAddNamedEntity',
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
ORActionAddTEnum class >> createVersionnedEntitySelector [ ^ #newEnum
]

{ #category : 'method execution' }
ORActionAddTEnum class >> run [
	super run.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	entity enumValues: self enumValues.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTEnum >> createVersionnedEntitySelector [ ^ #newEnum
]

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

{ #category : 'method execution' }
ORActionAddTEnum >> run [

	super run.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	entity enumValues: self enumValues.

	^entity.
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
