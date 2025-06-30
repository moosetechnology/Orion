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
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'incomingImports',
		'parentPackage',
		'comments'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaPackage >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> types [ ^types
]

{ #category : 'accessing' }
ORActionMoveJavaPackage >> types: aValue [ types := aValue
]
