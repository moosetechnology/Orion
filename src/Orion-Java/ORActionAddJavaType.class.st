"
I add a FamixJavaType in a MooseModel
I need the following properties of the  type

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
"
Class {
	#name : 'ORActionAddJavaType',
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
		'methods'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaType >> createVersionnedEntitySelector [ ^ #newType
]

{ #category : 'accessing' }
ORActionAddJavaType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaType >> run [

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

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
