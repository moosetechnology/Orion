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
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
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
ORActionAddJavaEnum >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> cache: aValue [ cache := aValue
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
ORActionAddJavaEnum >> createVersionnedEntitySelector [ ^ #newEnum
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> entityAttributes: aValue [ entityAttributes := aValue
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
ORActionAddJavaEnum >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity types: self types.
	entity definedAnnotationTypes: self definedAnnotationTypes.
	entity lowerBoundedWildcards: self lowerBoundedWildcards.
	entity upperBoundedWildcards: self upperBoundedWildcards.
	entity concreteEntities: self concreteEntities.
	entity generics: self generics.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity incomingReferences: self incomingReferences.
	entity methods: self methods.
	entity enumValues: self enumValues.
	entity visibility: self visibility.
	entity incomingImports: self incomingImports.
	entity receivingInvocations: self receivingInvocations.
	entity attributes: self attributes.
	entity comments: self comments.
	entity imports: self imports.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.

	^entity.
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
