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
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'isSynchronized',
		'isAbstract',
		'isClassSide',
		'isFinal',
		'kind',
		'visibility',
		'incomingImports',
		'comments',
		'caughtExceptions',
		'declaredExceptions',
		'thrownExceptions'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaMethod >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> caughtExceptions [ ^caughtExceptions
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> caughtExceptions: aValue [ caughtExceptions := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaMethod >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> declaredExceptions [ ^declaredExceptions
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> declaredExceptions: aValue [ declaredExceptions := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> incomingImports: aValue [ incomingImports := aValue
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
ORActionRenameJavaMethod >> thrownExceptions [ ^thrownExceptions
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> thrownExceptions: aValue [ thrownExceptions := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> types [ ^types
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaMethod >> visibility: aValue [ visibility := aValue
]
