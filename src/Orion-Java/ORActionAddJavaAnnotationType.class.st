"
I add a FamixJavaAnnotationType in a MooseModel
I need the following properties of the  annotationtype

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
-`annotationTypesContainer`
-`instances`
-`visibility`
-`implementations`
-`parentPackage`
-`attributes`
-`comments`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionAddJavaAnnotationType',
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
		'annotationTypesContainer',
		'instances',
		'visibility',
		'implementations',
		'parentPackage',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationType >> createVersionnedEntitySelector [ ^ #newAnnotationType
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> implementations [ ^implementations
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> implementations: aValue [ implementations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> instances [ ^instances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> instances: aValue [ instances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationType >> run [

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
	entity annotationTypesContainer: self annotationTypesContainer.
	entity instances: self instances.
	entity visibility: self visibility.
	entity implementations: self implementations.
	entity parentPackage: self parentPackage.
	entity attributes: self attributes.
	entity comments: self comments.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> visibility: aValue [ visibility := aValue
]
