"
I move a new FamixJavaMethod in a MooseModel
I need the following properties of the new method

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`isSynchronized`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`kind`
-`visibility`
-`incomingImports`
-`comments`
-`caughtExceptions`
-`declaredExceptions`
-`thrownExceptions`
"
Class {
	#name : 'ORActionMoveJavaMethod',
	#superclass : 'ORActionMoveTMethod',
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
ORActionMoveJavaMethod >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaMethod >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaMethod >> visibility: aValue [ visibility := aValue
]
