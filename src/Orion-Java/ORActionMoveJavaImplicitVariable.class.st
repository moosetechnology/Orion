"
I move a new FamixJavaImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionMoveJavaImplicitVariable',
	#superclass : 'ORActionMoveTImplicitVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaImplicitVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
