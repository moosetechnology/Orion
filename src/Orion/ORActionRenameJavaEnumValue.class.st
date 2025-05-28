Class {
	#name : 'ORActionRenameJavaEnumValue',
	#superclass : 'ORActionRenameTEnumValue',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
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
