"
I move a new FamixJavaClass in a MooseModel
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
	#name : 'ORActionMoveJavaClass',
	#superclass : 'ORActionMoveTClass',
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
ORActionMoveJavaClass >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaClass >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> visibility: aValue [ visibility := aValue
]
