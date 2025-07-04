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
ORActionAddJavaMethod >> accesses [ 
	^accesses ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> accesses: aValue [ accesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> annotationInstances [
	^annotationInstances ifNil: [ #() ]
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
ORActionAddJavaMethod >> caughtExceptions [ 
	^caughtExceptions ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> caughtExceptions: aValue [ caughtExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> comments [ 
	^comments ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaMethod >> createVersionnedEntitySelector [ ^ #newMethod
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> declaredExceptions [ 
	^declaredExceptions ifNil: [ #() ]
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
ORActionAddJavaMethod >> definedAnnotationTypes [ 
	^definedAnnotationTypes ifNil: [ #() ]
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
ORActionAddJavaMethod >> implicitVariables [ 
	^implicitVariables ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> implicitVariables: aValue [ implicitVariables := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingImports [ 
	^incomingImports ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> incomingInvocations [ 
	^incomingInvocations ifNil: [ #() ]
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
ORActionAddJavaMethod >> localVariables [ 
	^localVariables ifNil: [ #() ]
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
ORActionAddJavaMethod >> outgoingInvocations [ 
	^outgoingInvocations ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingInvocations: aValue [ outgoingInvocations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingReferences [
	^outgoingReferences ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> outgoingReferences: aValue [ outgoingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> parameters [ 
	^parameters ifNil: [ #() ]
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
	"entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel."

	entity sourceAnchor: self sourceAnchor.
	self annotationInstances
		ifNotEmpty: [entity annotationInstances: self annotationInstances].
	self types
		ifNotEmpty: [entity types: self types].
	self definedAnnotationTypes 
		ifNotEmpty: [entity definedAnnotationTypes: self definedAnnotationTypes].
	entity isSynchronized: self isSynchronized.
	entity isAbstract: self isAbstract.
	entity isClassSide: self isClassSide.
	entity isFinal: self isFinal.
	entity kind: self kind.
	entity visibility: self visibility.
	self incomingImports
		ifNotEmpty: [entity incomingImports: self incomingImports].
	self setFamixProperty: #parentType on: entity to: self parentType.
	entity signature: self signature.
	self incomingInvocations
		ifNotEmpty: [entity incomingInvocations: self incomingInvocations].
	"self setFamixProperty: #typing on: entity to: self declaredType."
	self implicitVariables
		ifNotEmpty: [entity implicitVariables: self implicitVariables].
	self localVariables
		ifNotEmpty: [entity localVariables: self localVariables].
	self parameters
		ifNotEmpty: [entity parameters: self parameters].
	entity isStub: self isStub.
	self accesses
		ifNotEmpty: [entity accesses: self accesses].
	self outgoingInvocations
		ifNotEmpty: [entity outgoingInvocations: self outgoingInvocations].
	self outgoingReferences
		ifNotEmpty: [entity outgoingReferences: self outgoingReferences].
	self comments
		ifNotEmpty: [entity comments: self comments].
	self caughtExceptions 
		ifNotEmpty: [entity caughtExceptions: self caughtExceptions].
	self declaredExceptions 
		ifNotEmpty: [entity declaredExceptions: self declaredExceptions].
	self thrownExceptions 
		ifNotEmpty: [entity thrownExceptions: self thrownExceptions].

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
ORActionAddJavaMethod >> thrownExceptions [ 
	^thrownExceptions ifNil: [ #() ]
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> thrownExceptions: aValue [ thrownExceptions := aValue
]

{ #category : 'accessing' }
ORActionAddJavaMethod >> types [ 
	^types ifNil: [ #() ]
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
