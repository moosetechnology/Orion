"
I move a new FamixJavaEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaEnumValue',
	#superclass : 'ORActionMoveTEnumValue',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]
