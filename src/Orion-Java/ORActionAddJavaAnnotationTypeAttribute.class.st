"
I add a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionAddJavaAnnotationTypeAttribute',
	#superclass : 'ORActionAddTAnnotationTypeAttribute',
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
ORActionAddJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [

	^super createVersionnedEntitySelector
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationTypeAttribute >> run [

	super run.

	self
		setFamixProperty: #annotationInstances
		on: newEntity
		to: self annotationInstances.
	self
		setFamixProperty: #receivingInvocations
		on: newEntity
		to: self receivingInvocations.
	self setFamixProperty: #comments on: newEntity to: self comments.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
