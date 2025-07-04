"
I remove a FamixJavaWildcard in a MooseModel
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
	#name : 'ORActionRemoveJavaWildcard',
	#superclass : 'ORActionRemoveNamedEntity',
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
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaWildcard >> createVersionnedEntitySelector [ ^ #newWildcard
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> lowerBound [ ^lowerBound
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> lowerBound: aValue [ lowerBound := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaWildcard >> run [

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
	entity lowerBound: nil.
	entity upperBound: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> upperBound [ ^upperBound
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> upperBound: aValue [ upperBound := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaWildcard >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
