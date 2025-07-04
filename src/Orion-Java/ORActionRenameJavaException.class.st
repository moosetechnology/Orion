"
I rename a new FamixJavaException in a MooseModel
I need the following properties of the new exception

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
	#name : 'ORActionRenameJavaException',
	#superclass : 'ORActionRenameTException',
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
ORActionRenameJavaException >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaException >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaException >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaException >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaException >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionRenameJavaException >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRenameJavaException >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaException >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaException >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaException >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaException >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRenameJavaException >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaException >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaException >> visibility: aValue [ visibility := aValue
]
