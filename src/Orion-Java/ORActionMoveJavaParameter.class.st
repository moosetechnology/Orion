"
I move a new FamixJavaParameter in a MooseModel
I need the following properties of the new parameter

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaParameter',
	#superclass : 'ORActionMoveTParameter',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
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

{ #category : 'method execution' }
ORActionMoveJavaParameter >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
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
