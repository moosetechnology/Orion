"
I rename a new FamixJavaPrimitiveType in a MooseModel
I need the following properties of the new primitivetype

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
	#name : 'ORActionRenameJavaPrimitiveType',
	#superclass : 'ORActionRenameTPrimitiveType',
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
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> types [ ^types
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
