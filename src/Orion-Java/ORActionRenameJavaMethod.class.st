"
I rename a new FamixJavaMethod in a MooseModel
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
	#name : 'ORActionRenameJavaMethod',
	#superclass : 'ORActionRenameTMethod',
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
ORActionRenameJavaMethod >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaMethod >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> visibility: aValue [ visibility := aValue
]
