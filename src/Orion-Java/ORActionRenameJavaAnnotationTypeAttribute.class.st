"
I rename a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaAnnotationTypeAttribute',
	#superclass : 'ORActionRenameTAnnotationTypeAttribute',
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
