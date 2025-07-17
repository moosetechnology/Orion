"
I remove a FamixJavaPrimitiveType in a MooseModel
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
	#name : 'ORActionRemoveJavaPrimitiveType',
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
ORActionRemoveJavaPrimitiveType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> methods: aValue [ methods := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaPrimitiveType >> run [

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
ORActionRemoveJavaPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaPrimitiveType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
