"
I move a new FamixJavaEnum in a MooseModel
I need the following properties of the new enum

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`methods`
-`visibility`
-`incomingImports`
-`receivingInvocations`
-`attributes`
-`comments`
-`imports`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionMoveJavaEnum',
	#superclass : 'ORActionMoveTEnum',
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
ORActionMoveJavaEnum >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaEnum >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> visibility: aValue [ visibility := aValue
]
