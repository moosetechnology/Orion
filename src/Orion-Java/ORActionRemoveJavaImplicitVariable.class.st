Class {
	#name : 'ORActionRemoveJavaImplicitVariable',
	#superclass : 'ORActionRemoveTImplicitVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
