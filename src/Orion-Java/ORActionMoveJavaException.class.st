"
I move a new FamixJavaException in a MooseModel
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
	#name : 'ORActionMoveJavaException',
	#superclass : 'ORActionMoveTException',
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
ORActionMoveJavaException >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaException >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaException >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaException >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaException >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionMoveJavaException >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaException >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaException >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaException >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaException >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaException >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionMoveJavaException >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaException >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaException >> visibility: aValue [ visibility := aValue
]
