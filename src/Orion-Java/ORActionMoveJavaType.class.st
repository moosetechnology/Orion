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
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
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
ORActionMoveJavaType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionMoveJavaType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaType >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionMoveJavaType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaType >> entityAttributes: aValue [ entityAttributes := aValue
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
ORActionMoveJavaType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaType >> mooseName: aValue [ mooseName := aValue
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
