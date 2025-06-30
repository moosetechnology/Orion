"
I remove a new FamixJavaAnnotationType in a MooseModel
I need the following properties of the new annotationtype

-`sourceAnchor`
-`name`
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
	#superclass : 'ORActionRemoveTAnnotationType',
	#instVars : [
		'sourceAnchor',
		'name',
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
		'visibility',
		'implementations',
		'parentPackage',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> annotationInstances: aValue [ annotationInstances := aValue
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

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationType >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
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
ORActionRemoveJavaAnnotationType >> name [ ^name
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationType >> parentPackage: aValue [ parentPackage := aValue
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
