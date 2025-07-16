"
I add a FamixJavaInterface in a MooseModel
I need the following properties of the  interface

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
-`isClassSide`
-`isFinal`
-`visibility`
-`implementations`
-`incomingImports`
-`receivingInvocations`
-`parentPackage`
-`attributes`
-`comments`
-`imports`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionAddJavaInterface',
	#superclass : 'ORActionAddJava',
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
		'isClassSide',
		'isFinal',
		'visibility',
		'implementations',
		'incomingImports',
		'receivingInvocations',
		'parentPackage',
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
ORActionAddJavaInterface >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaInterface >> createVersionnedEntitySelector [ ^ #newInterface
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> implementations [ ^implementations
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> implementations: aValue [ implementations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaInterface >> run [

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
	entity isClassSide: self isClassSide.
	entity isFinal: self isFinal.
	entity visibility: self visibility.
	entity implementations: self implementations.
	entity incomingImports: self incomingImports.
	entity receivingInvocations: self receivingInvocations.
	entity parentPackage: self parentPackage.
	entity attributes: self attributes.
	entity comments: self comments.
	entity imports: self imports.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaInterface >> visibility: aValue [ visibility := aValue
]
