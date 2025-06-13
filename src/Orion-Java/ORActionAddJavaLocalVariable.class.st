Class {
	#name : 'ORActionAddJavaLocalVariable',
	#superclass : 'ORActionAddTLocalVariable',
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
ORActionAddJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaLocalVariable >> run [

	| newEntity |
	newEntity := self orionModel newLocalVariable.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #receivingInvocations on: newEntity to: self receivingInvocations. self setFamixProperty: #isFinal on: newEntity to: self isFinal. self setFamixProperty: #comments on: newEntity to: self comments.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
