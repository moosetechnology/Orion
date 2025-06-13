Class {
	#name : 'ORActionRenameJavaAnnotationTypeAttribute',
	#superclass : 'ORActionRenameTAnnotationTypeAttribute',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]
