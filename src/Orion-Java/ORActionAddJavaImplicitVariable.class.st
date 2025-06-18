"
I add a new FamixJavaImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionAddJavaImplicitVariable',
	#superclass : 'ORActionAddTImplicitVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaImplicitVariable >> run [

	| newEntity |
	newEntity := self orionModel newImplicitVariable.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #receivingInvocations on: newEntity to: self receivingInvocations.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
