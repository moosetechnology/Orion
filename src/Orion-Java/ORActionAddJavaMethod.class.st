"
I add a FamixJavaMethod in a MooseModel
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
	#name : 'ORActionAddJavaMethod',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaMethod >> accesses [ ^accesses
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> accesses: aValue [ accesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> caughtExceptions [ ^caughtExceptions
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> caughtExceptions: aValue [ caughtExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaMethod >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredExceptions [ ^declaredExceptions
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredExceptions: aValue [ declaredExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> implicitVariables [ ^implicitVariables
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> implicitVariables: aValue [ implicitVariables := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingInvocations [ ^incomingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingInvocations: aValue [ incomingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> localVariables [ ^localVariables
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> localVariables: aValue [ localVariables := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingInvocations [ ^outgoingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingInvocations: aValue [ outgoingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingReferences [ ^outgoingReferences
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingReferences: aValue [ outgoingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> parameters [ ^parameters
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> parameters: aValue [ parameters := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddJavaMethod >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity types: self types.
	entity definedAnnotationTypes: self definedAnnotationTypes.
	entity isSynchronized: self isSynchronized.
	entity isAbstract: self isAbstract.
	entity isClassSide: self isClassSide.
	entity isFinal: self isFinal.
	entity kind: self kind.
	entity visibility: self visibility.
	entity incomingImports: self incomingImports.
	entity parentType: self parentType.
	entity signature: self signature.
	entity incomingInvocations: self incomingInvocations.
	entity declaredType: self declaredType.
	entity implicitVariables: self implicitVariables.
	entity localVariables: self localVariables.
	entity parameters: self parameters.
	entity isStub: self isStub.
	entity accesses: self accesses.
	entity outgoingInvocations: self outgoingInvocations.
	entity outgoingReferences: self outgoingReferences.
	entity comments: self comments.
	entity caughtExceptions: self caughtExceptions.
	entity declaredExceptions: self declaredExceptions.
	entity thrownExceptions: self thrownExceptions.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> thrownExceptions [ ^thrownExceptions
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> thrownExceptions: aValue [ thrownExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> visibility: aValue [ visibility := aValue
]
