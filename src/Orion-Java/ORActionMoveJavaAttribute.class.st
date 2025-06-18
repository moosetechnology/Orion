"
I move a new FamixJavaAttribute in a MooseModel
I need the following properties of the new attribute

-`annotationInstances`
-`receivingInvocations`
-`isTransient`
-`isVolatile`
-`isClassSide`
-`isFinal`
-`visibility`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaAttribute',
	#superclass : 'ORActionMoveTAttribute',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isTransient',
		'isVolatile',
		'isClassSide',
		'isFinal',
		'visibility',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> visibility: aValue [ visibility := aValue
]
