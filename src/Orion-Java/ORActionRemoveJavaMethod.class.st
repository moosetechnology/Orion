"
I remove a FamixJavaMethod in a MooseModel
I need the following properties of the  method

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`isSynchronized`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`kind`
-`visibility`
-`incomingImports`
-`parentType`
-`signature`
-`incomingInvocations`
-`declaredType`
-`implicitVariables`
-`localVariables`
-`parameters`
-`isStub`
-`accesses`
-`outgoingInvocations`
-`outgoingReferences`
-`comments`
-`caughtExceptions`
-`declaredExceptions`
-`thrownExceptions`
"
Class {
	#name : 'ORActionRemoveJavaMethod',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'isSynchronized',
		'isAbstract',
		'isClassSide',
		'isFinal',
		'kind',
		'visibility',
		'incomingImports',
		'parentType',
		'signature',
		'incomingInvocations',
		'declaredType',
		'implicitVariables',
		'localVariables',
		'parameters',
		'isStub',
		'accesses',
		'outgoingInvocations',
		'outgoingReferences',
		'comments',
		'caughtExceptions',
		'declaredExceptions',
		'thrownExceptions'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> accesses [ ^accesses
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> accesses: aValue [ accesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> caughtExceptions [ ^caughtExceptions
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> caughtExceptions: aValue [ caughtExceptions := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaMethod >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> declaredExceptions [ ^declaredExceptions
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> declaredExceptions: aValue [ declaredExceptions := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> implicitVariables [ ^implicitVariables
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> implicitVariables: aValue [ implicitVariables := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> incomingInvocations [ ^incomingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> incomingInvocations: aValue [ incomingInvocations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> localVariables [ ^localVariables
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> localVariables: aValue [ localVariables := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> outgoingInvocations [ ^outgoingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> outgoingInvocations: aValue [ outgoingInvocations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> outgoingReferences [ ^outgoingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> outgoingReferences: aValue [ outgoingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> parameters [ ^parameters
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> parameters: aValue [ parameters := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaMethod >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity types: nil.
	entity definedAnnotationTypes: nil.
	entity isSynchronized: nil.
	entity isAbstract: nil.
	entity isClassSide: nil.
	entity isFinal: nil.
	entity kind: nil.
	entity visibility: nil.
	entity incomingImports: nil.
	entity parentType: nil.
	entity signature: nil.
	entity incomingInvocations: nil.
	entity declaredType: nil.
	entity implicitVariables: nil.
	entity localVariables: nil.
	entity parameters: nil.
	entity isStub: nil.
	entity accesses: nil.
	entity outgoingInvocations: nil.
	entity outgoingReferences: nil.
	entity comments: nil.
	entity caughtExceptions: nil.
	entity declaredExceptions: nil.
	entity thrownExceptions: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> thrownExceptions [ ^thrownExceptions
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> thrownExceptions: aValue [ thrownExceptions := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> visibility: aValue [ visibility := aValue
]
