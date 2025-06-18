"
I add a new FamixTAnnotationInstance in a MooseModel
I need the following properties of the new annotationinstance

-`annotatedEntity`
-`annotationType`
"
Class {
	#name : 'ORActionAddTAnnotationInstance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotatedEntity',
		'annotationType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotatedEntity [ ^annotatedEntity
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotatedEntity: aValue [ annotatedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotationType [ ^annotationType
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotationType: aValue [ annotationType := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstance >> createVersionnedEntitySelector [

	^ #newAnnotationInstance
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstance >> run [

	super run.

	self setFamixProperty: #annotatedEntity on: newEntity to: self annotatedEntity. self setFamixProperty: #annotationType on: newEntity to: self annotationType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
