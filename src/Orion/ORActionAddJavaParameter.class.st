Class {
	#name : 'ORActionAddJavaParameter',
	#superclass : 'ORActionAddTParameter',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaParameter >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaParameter >> run [

	| newEntity |
	newEntity := self orionModel newParameter.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #receivingInvocations on: newEntity to: self receivingInvocations. self setFamixProperty: #isFinal on: newEntity to: self isFinal. self setFamixProperty: #comments on: newEntity to: self comments.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
