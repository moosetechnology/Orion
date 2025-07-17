"
I remove a FamixJavaException in a MooseModel
I need the following properties of the  exception

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`typeContainer`
-`typedEntities`
-`isStub`
-`incomingReferences`
-`methods`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`interfaceImplementations`
-`receivingInvocations`
-`attributes`
-`comments`
-`superInheritances`
-`subInheritances`
-`visibility`
-`incomingImports`
-`parentPackage`
-`imports`
-`catchingEntities`
-`declaringEntities`
-`throwingEntities`
"
Class {
	#name : 'ORActionRemoveJavaException',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'lowerBoundedWildcards',
		'upperBoundedWildcards',
		'concreteEntities',
		'generics',
		'typeContainer',
		'typedEntities',
		'isStub',
		'incomingReferences',
		'methods',
		'isAbstract',
		'isClassSide',
		'isFinal',
		'interfaceImplementations',
		'receivingInvocations',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances',
		'visibility',
		'incomingImports',
		'parentPackage',
		'imports',
		'catchingEntities',
		'declaringEntities',
		'throwingEntities'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaException >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaException >> createVersionnedEntitySelector [ ^ #newException
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> interfaceImplementations [ ^interfaceImplementations
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> interfaceImplementations: aValue [ interfaceImplementations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaException >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity types: nil.
	entity definedAnnotationTypes: nil.
	entity lowerBoundedWildcards: nil.
	entity upperBoundedWildcards: nil.
	entity concreteEntities: nil.
	entity generics: nil.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity incomingReferences: nil.
	entity methods: nil.
	entity isAbstract: nil.
	entity isClassSide: nil.
	entity isFinal: nil.
	entity interfaceImplementations: nil.
	entity receivingInvocations: nil.
	entity attributes: nil.
	entity comments: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.
	entity visibility: nil.
	entity incomingImports: nil.
	entity parentPackage: nil.
	entity imports: nil.
	entity catchingEntities: nil.
	entity declaringEntities: nil.
	entity throwingEntities: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaException >> visibility: aValue [ visibility := aValue
]
