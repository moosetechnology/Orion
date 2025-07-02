"
I remove a new FamixTException in a MooseModel
I need the following properties of the new exception

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTException',
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
		'methods',
		'catchingEntities',
		'declaringEntities',
		'throwingEntities'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTException class >> createVersionnedEntitySelector [ ^ #newException
]

{ #category : 'method execution' }
ORActionRemoveTException class >> run [
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
	entity catchingEntities: nil.
	entity declaringEntities: nil.
	entity throwingEntities: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTException >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveTException >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionRemoveTException >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveTException >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveTException >> createVersionnedEntitySelector [ ^ #newException
]

{ #category : 'accessing' }
ORActionRemoveTException >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionRemoveTException >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveTException >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveTException >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveTException >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveTException >> run [
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
	entity catchingEntities: nil.
	entity declaringEntities: nil.
	entity throwingEntities: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveTException >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveTException >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionRemoveTException >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTException >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveTException >> typedEntities: aValue [ typedEntities := aValue
]
