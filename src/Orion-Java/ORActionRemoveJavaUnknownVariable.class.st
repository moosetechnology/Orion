Class {
	#name : 'ORActionRemoveJavaUnknownVariable',
	#superclass : 'ORActionRemoveTUnknownVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
