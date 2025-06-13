Class {
	#name : 'ORActionRemoveJavaLocalVariable',
	#superclass : 'ORActionRemoveTLocalVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
