"
I remove a FamixJavaType in a MooseModel
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
	#name : 'ORActionRemoveJavaType',
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
		'methods'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> methods: aValue [ methods := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaType >> run [

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

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
