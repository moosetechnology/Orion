"
I add a new FamixJavaEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionAddJavaEnumValue',
	#superclass : 'ORActionAddTEnumValue',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'comments'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnumValue >> run [

	| newEntity |
	newEntity := self orionModel newEnumValue.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #receivingInvocations on: newEntity to: self receivingInvocations. self setFamixProperty: #comments on: newEntity to: self comments.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
