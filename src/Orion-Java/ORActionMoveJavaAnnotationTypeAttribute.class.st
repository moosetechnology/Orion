"
I move a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionMoveTAnnotationTypeAttribute',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
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

{ #category : 'method execution' }
ORActionMoveJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]
