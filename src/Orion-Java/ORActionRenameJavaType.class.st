"
I rename a new FamixJavaType in a MooseModel
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
	#name : 'ORActionRenameJavaType',
	#superclass : 'ORActionRenameTType',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRenameJavaType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaType >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRenameJavaType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRenameJavaType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRenameJavaType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRenameJavaType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> types [ ^types
]

{ #category : 'accessing' }
ORActionRenameJavaType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRenameJavaType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
