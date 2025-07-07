"
I move a new FamixJavaMethod in a MooseModel
I need the following properties of the new method

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
-`comments`
-`caughtExceptions`
-`declaredExceptions`
-`thrownExceptions`
"
Class {
	#name : 'ORActionMoveJavaMethod',
	#superclass : 'ORActionMoveNamedEntity',
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
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaMethod >> accesses [

	^ accesses
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> accesses: anObject [

	accesses := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> annotationInstances [

	^ annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> annotationInstances: anObject [

	annotationInstances := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> caughtExceptions [

	^ caughtExceptions
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> caughtExceptions: anObject [

	caughtExceptions := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> comments [

	^ comments
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> comments: anObject [

	comments := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> declaredExceptions [

	^ declaredExceptions
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> declaredExceptions: anObject [

	declaredExceptions := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> declaredType [

	^ declaredType
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> declaredType: anObject [

	declaredType := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> definedAnnotationTypes [

	^ definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> definedAnnotationTypes: anObject [

	definedAnnotationTypes := anObject
]

{ #category : 'method execution' }
ORActionMoveJavaMethod >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTMethod.

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> implicitVariables [

	^ implicitVariables
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> implicitVariables: anObject [

	implicitVariables := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> incomingImports [

	^ incomingImports
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> incomingImports: anObject [

	incomingImports := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> incomingInvocations [

	^ incomingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> incomingInvocations: anObject [

	incomingInvocations := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isStub [

	^ isStub
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isStub: anObject [

	isStub := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> localVariables [

	^ localVariables
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> localVariables: anObject [

	localVariables := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> outgoingInvocations [

	^ outgoingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> outgoingInvocations: anObject [

	outgoingInvocations := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> outgoingReferences [

	^ outgoingReferences
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> outgoingReferences: anObject [

	outgoingReferences := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> parameters [

	^ parameters
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> parameters: anObject [

	parameters := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> parentType [

	^ parentType
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> parentType: anObject [

	parentType := anObject
]

{ #category : 'method execution' }
ORActionMoveJavaMethod >> run [

	| newEntity |
	newEntity := self setFamixProperty: #parentType on: self entity to: self to.

	newEntity resetMooseName.

	^ newEntity
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> signature [

	^ signature
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> signature: anObject [

	signature := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> sourceAnchor [

	^ sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> sourceAnchor: anObject [

	sourceAnchor := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> thrownExceptions [

	^ thrownExceptions
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> thrownExceptions: anObject [

	thrownExceptions := anObject
]

{ #category : 'method execution' }
ORActionMoveJavaMethod >> to: container [

	IllegalType check: container useTrait:  FamixTWithMethods.

	super to: container
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> types [

	^ types
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> types: anObject [

	types := anObject
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> visibility: aValue [ visibility := aValue
]
