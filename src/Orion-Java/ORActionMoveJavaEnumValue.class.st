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
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
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

{ #category : 'method execution' }
ORActionMoveJavaEnumValue >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]
