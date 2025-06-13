Class {
	#name : 'ORActionMoveJavaParameter',
	#superclass : 'ORActionMoveTParameter',
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
ORActionMoveJavaParameter >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> receivingInvocations: aValue [ receivingInvocations := aValue
]
