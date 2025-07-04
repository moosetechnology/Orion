"
I rename a new FamixJavaClass in a MooseModel
I need the following properties of the new class

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`interfaceImplementations`
-`visibility`
-`incomingImports`
-`parentPackage`
-`imports`
"
Class {
	#name : 'ORActionRenameJavaClass',
	#superclass : 'ORActionRenameTClass',
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
ORActionRenameJavaClass >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaClass >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaClass >> visibility: aValue [ visibility := aValue
]
