"
I add a FamixTAnnotationType in a MooseModel
I need the following properties of the  annotationtype

-`annotationTypesContainer`
-`instances`
"
Class {
	#name : 'ORActionAddTAnnotationType',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotationTypesContainer',
		'instances'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTAnnotationType class >> run [
	super run.
	entity annotationTypesContainer: self annotationTypesContainer.
	entity instances: self instances.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionAddTAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationType >> instances [ ^instances
]

{ #category : 'accessing' }
ORActionAddTAnnotationType >> instances: aValue [ instances := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationType >> run [

	super run.
	entity annotationTypesContainer: self annotationTypesContainer.
	entity instances: self instances.

	^entity.
]
