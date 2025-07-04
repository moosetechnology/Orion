"
I rename a new FamixJavaEnum in a MooseModel
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
	#name : 'ORActionRenameJavaEnum',
	#superclass : 'ORActionRenameTEnum',
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
ORActionRenameJavaEnum >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaEnum >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaEnum >> visibility: aValue [ visibility := aValue
]
