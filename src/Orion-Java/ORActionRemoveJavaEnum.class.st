"
I remove a FamixJavaEnum in a MooseModel
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
	#name : 'ORActionRemoveJavaEnum',
	#superclass : 'ORActionRemoveJava',
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
ORActionRemoveJavaEnum >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaEnum >> createVersionnedEntitySelector [ ^ #newEnum
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> enumValues [ ^enumValues
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> enumValues: aValue [ enumValues := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaEnum >> run [

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
	entity lowerBoundedWildcards: nil.
	entity upperBoundedWildcards: nil.
	entity concreteEntities: nil.
	entity generics: nil.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity incomingReferences: nil.
	entity methods: nil.
	entity enumValues: nil.
	entity visibility: nil.
	entity incomingImports: nil.
	entity receivingInvocations: nil.
	entity attributes: nil.
	entity comments: nil.
	entity imports: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaEnum >> visibility: aValue [ visibility := aValue
]
