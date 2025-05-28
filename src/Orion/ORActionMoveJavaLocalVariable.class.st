Class {
	#name : 'ORActionMoveJavaLocalVariable',
	#superclass : 'ORActionMoveTLocalVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
