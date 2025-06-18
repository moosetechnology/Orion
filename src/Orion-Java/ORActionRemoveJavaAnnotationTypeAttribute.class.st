"
I remove a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionRemoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionRemoveTAnnotationTypeAttribute',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]
