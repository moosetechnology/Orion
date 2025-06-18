"
I remove a new FamixJavaParameter in a MooseModel
I need the following properties of the new parameter

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionRemoveJavaParameter',
	#superclass : 'ORActionRemoveTParameter',
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
ORActionRemoveJavaParameter >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> receivingInvocations: aValue [ receivingInvocations := aValue
]
