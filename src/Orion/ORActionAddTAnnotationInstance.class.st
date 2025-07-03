"
I add a FamixTAnnotationInstance in a MooseModel
I need the following properties of the  annotationinstance

-`annotatedEntity`
-`annotationType`
-`attributes`
"
Class {
	#name : 'ORActionAddTAnnotationInstance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotatedEntity',
		'annotationType',
		'attributes'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTAnnotationInstance class >> run [
	super run.
	entity annotatedEntity: self annotatedEntity.
	entity annotationType: self annotationType.
	entity attributes: self attributes.
	^entity.
]

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

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> attributes: aValue [ attributes := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstance >> run [

	super run.
	entity annotatedEntity: self annotatedEntity.
	entity annotationType: self annotationType.
	entity attributes: self attributes.

	^entity.
]
