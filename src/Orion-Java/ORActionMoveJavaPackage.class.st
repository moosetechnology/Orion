"
I move a new FamixJavaPackage in a MooseModel
I need the following properties of the new package

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`incomingImports`
-`parentPackage`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaPackage',
	#superclass : 'ORActionMoveTPackage',
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
ORActionMoveJavaPackage >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaPackage >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]
