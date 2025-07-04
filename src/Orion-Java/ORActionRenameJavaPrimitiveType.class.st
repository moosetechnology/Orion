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
ORActionRenameJavaPrimitiveType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaPrimitiveType >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> entityAttributes: aValue [ entityAttributes := aValue
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
ORActionRenameJavaPrimitiveType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaPrimitiveType >> mooseName: aValue [ mooseName := aValue
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
