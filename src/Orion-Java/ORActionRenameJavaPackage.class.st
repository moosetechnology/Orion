"
I rename a new FamixJavaPackage in a MooseModel
I need the following properties of the new package

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`incomingImports`
-`parentPackage`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaPackage',
	#superclass : 'ORActionRenameTPackage',
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
ORActionRenameJavaPackage >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaPackage >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]
