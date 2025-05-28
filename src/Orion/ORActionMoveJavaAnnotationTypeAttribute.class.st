Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionMoveTAnnotationTypeAttribute',
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
ORActionMoveJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]
