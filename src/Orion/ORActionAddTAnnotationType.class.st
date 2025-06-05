Class {
	#name : 'ORActionAddTAnnotationType',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotationTypesContainer'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionAddTAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationType >> createVersionnedEntitySelector [

	^ #newAnnotationType
]

{ #category : 'method execution' }
ORActionAddTAnnotationType >> run [

	super run.

	self setFamixProperty: #annotationTypesContainer on: newEntity to: self annotationTypesContainer.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
