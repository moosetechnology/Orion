"
I remove a new FamixJavaImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionRemoveJavaImplicitVariable',
	#superclass : 'ORActionRemoveTImplicitVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
