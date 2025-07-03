"
I remove a FamixTMethod in a MooseModel
I need the following properties of the  method

-`parentType`
-`signature`
-`incomingInvocations`
-`declaredType`
-`implicitVariables`
-`localVariables`
-`parameters`
-`isStub`
-`sourceAnchor`
-`accesses`
-`outgoingInvocations`
-`outgoingReferences`
"
Class {
	#name : 'ORActionRemoveTMethod',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'parentType',
		'signature',
		'incomingInvocations',
		'declaredType',
		'implicitVariables',
		'localVariables',
		'parameters',
		'isStub',
		'sourceAnchor',
		'accesses',
		'outgoingInvocations',
		'outgoingReferences'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTMethod class >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'method execution' }
ORActionRemoveTMethod class >> run [
	super run.
	entity parentType: nil.
	entity signature: nil.
	entity incomingInvocations: nil.
	entity declaredType: nil.
	entity implicitVariables: nil.
	entity localVariables: nil.
	entity parameters: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity accesses: nil.
	entity outgoingInvocations: nil.
	entity outgoingReferences: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> accesses [ ^accesses
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> accesses: aValue [ accesses := aValue
]

{ #category : 'method execution' }
ORActionRemoveTMethod >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> implicitVariables [ ^implicitVariables
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> implicitVariables: aValue [ implicitVariables := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> incomingInvocations [ ^incomingInvocations
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> incomingInvocations: aValue [ incomingInvocations := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> localVariables [ ^localVariables
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> localVariables: aValue [ localVariables := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> outgoingInvocations [ ^outgoingInvocations
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> outgoingInvocations: aValue [ outgoingInvocations := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> outgoingReferences [ ^outgoingReferences
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> outgoingReferences: aValue [ outgoingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> parameters [ ^parameters
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> parameters: aValue [ parameters := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTMethod >> run [

	super run.
	entity parentType: nil.
	entity signature: nil.
	entity incomingInvocations: nil.
	entity declaredType: nil.
	entity implicitVariables: nil.
	entity localVariables: nil.
	entity parameters: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity accesses: nil.
	entity outgoingInvocations: nil.
	entity outgoingReferences: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]
