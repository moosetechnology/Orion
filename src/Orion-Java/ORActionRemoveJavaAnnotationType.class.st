"
I remove a FamixJavaAnnotationType in a MooseModel
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
	#name : 'ORActionRemoveJavaAnnotationType',
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
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> implementations [ ^implementations
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> implementations: aValue [ implementations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> instances [ ^instances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> instances: aValue [ instances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationType >> run [

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
	entity annotationTypesContainer: nil.
	entity instances: nil.
	entity visibility: nil.
	entity implementations: nil.
	entity parentPackage: nil.
	entity attributes: nil.
	entity comments: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> visibility: aValue [ visibility := aValue
]
