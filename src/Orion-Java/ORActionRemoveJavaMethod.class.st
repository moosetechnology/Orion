"
I remove a new FamixJavaMethod in a MooseModel
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
	#name : 'ORActionRemoveJavaMethod',
	#superclass : 'ORActionRemoveTMethod',
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
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> caughtExceptions [ ^caughtExceptions
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> caughtExceptions: aValue [ caughtExceptions := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaMethod >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> declaredExceptions [ ^declaredExceptions
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> declaredExceptions: aValue [ declaredExceptions := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isSynchronized [ ^isSynchronized
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> isSynchronized: aValue [ isSynchronized := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> kind [ ^kind
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> kind: aValue [ kind := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> thrownExceptions [ ^thrownExceptions
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> thrownExceptions: aValue [ thrownExceptions := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaMethod >> visibility: aValue [ visibility := aValue
]
