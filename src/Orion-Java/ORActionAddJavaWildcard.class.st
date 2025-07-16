"
I add a FamixJavaWildcard in a MooseModel
I need the following properties of the  wildcard

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
-`lowerBound`
-`upperBound`
"
Class {
	#name : 'ORActionAddJavaWildcard',
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
		'lowerBound',
		'upperBound'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaWildcard >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaWildcard >> createVersionnedEntitySelector [ ^ #newWildcard
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> lowerBound [ ^lowerBound
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> lowerBound: aValue [ lowerBound := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaWildcard >> run [

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
	entity lowerBound: self lowerBound.
	entity upperBound: self upperBound.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> upperBound [ ^upperBound
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> upperBound: aValue [ upperBound := aValue
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaWildcard >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
