"
I rename a new FamixJavaUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionRenameJavaUnknownVariable',
	#superclass : 'ORActionRenameTUnknownVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaUnknownVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
