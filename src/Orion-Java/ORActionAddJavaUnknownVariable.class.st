"
I add a new FamixJavaUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionAddJavaUnknownVariable',
	#superclass : 'ORActionAddTUnknownVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionAddJavaUnknownVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaUnknownVariable >> run [

	| newEntity |
	newEntity := self orionModel newUnknownVariable.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #receivingInvocations on: newEntity to: self receivingInvocations.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
