"
I rename a new FamixJavaEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaEnumValue',
	#superclass : 'ORActionRenameTEnumValue',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]
