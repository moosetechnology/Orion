"
I move a new FamixJavaType in a MooseModel
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
	#name : 'ORActionMoveJavaType',
	#superclass : 'ORActionMoveTType',
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
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionMoveJavaType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionMoveJavaType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionMoveJavaType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionMoveJavaType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionMoveJavaType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> types [ ^types
]

{ #category : 'accessing' }
ORActionMoveJavaType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionMoveJavaType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
