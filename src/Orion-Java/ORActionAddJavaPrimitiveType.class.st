"
I add a FamixJavaPrimitiveType in a MooseModel
I need the following properties of the  primitivetype

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
	#name : 'ORActionAddJavaPrimitiveType',
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
ORActionAddJavaPrimitiveType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaPrimitiveType >> createVersionnedEntitySelector [ ^ #newPrimitiveType
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaPrimitiveType >> run [

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
ORActionAddJavaPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
