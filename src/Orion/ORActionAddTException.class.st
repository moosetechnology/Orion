Class {
	#name : 'ORActionAddTException',
	#superclass : 'ORActionAddNamedEntity',
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
ORActionAddTException class >> createVersionnedEntitySelector [ ^ #newException
]

{ #category : 'method execution' }
ORActionAddTException class >> run [
	super run.
	entity receivingInvocations: self receivingInvocations.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	entity attributes: self attributes.
	entity comments: self comments.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.
	entity methods: self methods.
	entity catchingEntities: self catchingEntities.
	entity declaringEntities: self declaringEntities.
	entity throwingEntities: self throwingEntities.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTException >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddTException >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionAddTException >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddTException >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddTException >> createVersionnedEntitySelector [ ^ #newException
]

{ #category : 'accessing' }
ORActionAddTException >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionAddTException >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddTException >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddTException >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddTException >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddTException >> run [
	super run.
	entity receivingInvocations: self receivingInvocations.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	entity attributes: self attributes.
	entity comments: self comments.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.
	entity methods: self methods.
	entity catchingEntities: self catchingEntities.
	entity declaringEntities: self declaringEntities.
	entity throwingEntities: self throwingEntities.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddTException >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddTException >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionAddTException >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTException >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddTException >> typedEntities: aValue [ typedEntities := aValue
]
