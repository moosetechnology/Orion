"
I remove a new FamixJavaEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionRemoveJavaEnumValue',
	#superclass : 'ORActionRemoveTEnumValue',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]
