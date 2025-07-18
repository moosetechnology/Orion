"
I add a FamixJavaException in a MooseModel
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
	#name : 'ORActionAddJavaException',
	#superclass : 'ORActionAddNamedEntityJava',
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
ORActionAddJavaException >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaException >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaException >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionAddJavaException >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaException >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaException >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaException >> createVersionnedEntitySelector [ 

	^#newException
]

{ #category : 'accessing' }
ORActionAddJavaException >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionAddJavaException >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaException >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaException >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionAddJavaException >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaException >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaException >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> interfaceImplementations [ ^interfaceImplementations
]

{ #category : 'accessing' }
ORActionAddJavaException >> interfaceImplementations: aValue [ interfaceImplementations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionAddJavaException >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaException >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaException >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaException >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaException >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaException >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaException >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaException >> run [

	super run.
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances
		ifNotNil: [entity annotationInstances: self annotationInstances ].
	self types 
		ifNotNil: [ entity types: self types ].
	self definedAnnotationTypes 
		ifNotNil: [entity definedAnnotationTypes: self definedAnnotationTypes ].
	self lowerBoundedWildcards 
		ifNotNil: [entity lowerBoundedWildcards: self lowerBoundedWildcards ].
	self upperBoundedWildcards 
		ifNotNil: [entity upperBoundedWildcards: self upperBoundedWildcards ].
	self concreteEntities 
		ifNotNil: [	entity concreteEntities: self concreteEntities ].
	self generics 
		ifNotNil: [ entity generics: self generics ].
	entity typeContainer: self typeContainer.
	self typedEntities 
		ifNotNil: [	entity typedEntities: self typedEntities ].
	entity isStub: self isStub.
	self incomingReferences 
		ifNotNil: [	entity incomingReferences: self incomingReferences ].
	self methods 
		ifNotNil: [ entity methods: self methods ].
	entity isAbstract: self isAbstract.
	entity isClassSide: self isClassSide.
	entity isFinal: self isFinal.
	self interfaceImplementations 
		ifNotNil: [entity interfaceImplementations: self interfaceImplementations].
	self receivingInvocations 
		ifNotNil: [entity receivingInvocations: self receivingInvocations ].
	self attributes 
		ifNotNil: [ entity attributes: self attributes ].
	self comments 
		ifNotNil: [ entity comments: self comments ].
	self superInheritances 
		ifNotNil: [entity superInheritances: self superInheritances ].
	self subInheritances 
		ifNotNil: [entity subInheritances: self subInheritances ].
	entity visibility: self visibility.
	self incomingImports 
		ifNotNil: [entity incomingImports: self incomingImports].
	entity parentPackage: self parentPackage.
	self imports 
		ifNotNil: [ entity imports: self imports ].
	self catchingEntities 
		ifNotNil: [entity catchingEntities: self catchingEntities].
	self declaringEntities 
		ifNotNil: [entity declaringEntities: self declaringEntities].
	self throwingEntities 
		ifNotNil: [entity throwingEntities: self throwingEntities].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaException >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaException >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionAddJavaException >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaException >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaException >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaException >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaException >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaException >> visibility: aValue [ visibility := aValue
]
