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

	| newEntity |
	newEntity := self orionModel newAnnotationType.

	self setFamixProperty: #annotationTypesContainer on: newEntity to: self annotationTypesContainer. self setFamixProperty: #annotationTypesContainer on: newEntity to: self annotationTypesContainer. self setFamixProperty: #instances on: newEntity to: self instances.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
