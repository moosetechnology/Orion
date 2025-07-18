"
I add a FamixJavaEnum in a MooseModel
I need the following properties of the  enum

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
-`enumValues`
-`visibility`
-`incomingImports`
-`receivingInvocations`
-`attributes`
-`comments`
-`imports`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionAddJavaEnum',
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
		'enumValues',
		'visibility',
		'incomingImports',
		'receivingInvocations',
		'attributes',
		'comments',
		'imports',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaEnum >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnum >> createVersionnedEntitySelector [ 

	^#newEnum
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> enumValues [ ^enumValues
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> enumValues: aValue [ enumValues := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnum >> run [

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
	self enumValues 
		ifNotNil: [ entity enumValues: self enumValues ].
	entity visibility: self visibility.
	self incomingImports 
		ifNotNil: [	entity incomingImports: self incomingImports ].
	self receivingInvocations 
		ifNotNil: [entity receivingInvocations: self receivingInvocations ].
	self attributes 
		ifNotNil: [ entity attributes: self attributes ].
	self comments 
		ifNotNil: [ entity comments: self comments ].
	self imports 
		ifNotNil: [ entity imports: self imports ].
	self superInheritances 
		ifNotNil: [entity superInheritances: self superInheritances ].
	self subInheritances 
		ifNotNil: [entity subInheritances: self subInheritances ].

	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> visibility: aValue [ visibility := aValue
]
