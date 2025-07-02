"
I remove a new FamixTClass in a MooseModel
I need the following properties of the new class

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTClass',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'receivingInvocations',
		'typeContainer',
		'typedEntities',
		'isStub',
		'sourceAnchor',
		'incomingReferences',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances',
		'methods'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTClass class >> createVersionnedEntitySelector [ ^ #newClass
]

{ #category : 'method execution' }
ORActionRemoveTClass class >> run [
	super run.
	entity receivingInvocations: nil.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity incomingReferences: nil.
	entity attributes: nil.
	entity comments: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.
	entity methods: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTClass >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveTClass >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveTClass >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveTClass >> createVersionnedEntitySelector [ ^ #newClass
]

{ #category : 'accessing' }
ORActionRemoveTClass >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveTClass >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveTClass >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveTClass >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveTClass >> run [
	super run.
	entity receivingInvocations: nil.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity incomingReferences: nil.
	entity attributes: nil.
	entity comments: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.
	entity methods: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveTClass >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveTClass >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTClass >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveTClass >> typedEntities: aValue [ typedEntities := aValue
]
