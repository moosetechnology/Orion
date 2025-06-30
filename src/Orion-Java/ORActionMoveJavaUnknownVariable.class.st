"
I move a new FamixJavaUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionMoveJavaUnknownVariable',
	#superclass : 'ORActionMoveTUnknownVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaUnknownVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
