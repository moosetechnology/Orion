"
I add a FamixTMethod in a MooseModel
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
	#name : 'ORActionAddTMethod',
	#superclass : 'ORActionAddNamedEntity',
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
ORActionAddTMethod class >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'method execution' }
ORActionAddTMethod class >> run [
	super run.
	entity parentType: self parentType.
	entity signature: self signature.
	entity incomingInvocations: self incomingInvocations.
	entity declaredType: self declaredType.
	entity implicitVariables: self implicitVariables.
	entity localVariables: self localVariables.
	entity parameters: self parameters.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity accesses: self accesses.
	entity outgoingInvocations: self outgoingInvocations.
	entity outgoingReferences: self outgoingReferences.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTMethod >> accesses [ ^accesses
]

{ #category : 'accessing' }
ORActionAddTMethod >> accesses: aValue [ accesses := aValue
]

{ #category : 'method execution' }
ORActionAddTMethod >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> implicitVariables [ ^implicitVariables
]

{ #category : 'accessing' }
ORActionAddTMethod >> implicitVariables: aValue [ implicitVariables := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> incomingInvocations [ ^incomingInvocations
]

{ #category : 'accessing' }
ORActionAddTMethod >> incomingInvocations: aValue [ incomingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> localVariables [ ^localVariables
]

{ #category : 'accessing' }
ORActionAddTMethod >> localVariables: aValue [ localVariables := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingInvocations [ ^outgoingInvocations
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingInvocations: aValue [ outgoingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingReferences [ ^outgoingReferences
]

{ #category : 'accessing' }
ORActionAddTMethod >> outgoingReferences: aValue [ outgoingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> parameters [ ^parameters
]

{ #category : 'accessing' }
ORActionAddTMethod >> parameters: aValue [ parameters := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTMethod >> run [

	super run.
	entity parentType: self parentType.
	entity signature: self signature.
	entity incomingInvocations: self incomingInvocations.
	entity declaredType: self declaredType.
	entity implicitVariables: self implicitVariables.
	entity localVariables: self localVariables.
	entity parameters: self parameters.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity accesses: self accesses.
	entity outgoingInvocations: self outgoingInvocations.
	entity outgoingReferences: self outgoingReferences.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionAddTMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]
