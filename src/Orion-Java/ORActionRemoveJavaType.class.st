"
I remove a new FamixJavaType in a MooseModel
I need the following properties of the new type

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`methods`
"
Class {
	#name : 'ORActionRemoveJavaType',
	#superclass : 'ORActionRemoveTType',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'lowerBoundedWildcards',
		'upperBoundedWildcards',
		'concreteEntities',
		'generics',
		'methods'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
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

{ #category : 'method execution' }
ORActionRemoveJavaType >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
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
