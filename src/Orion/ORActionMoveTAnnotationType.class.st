Class {
	#name : 'ORActionMoveTAnnotationType',
	#superclass : 'ORActionMove',
	#instVars : [
		'annotationTypesContainer'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionMoveTAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'method execution' }
ORActionMoveTAnnotationType >> createVersionnedEntitySelector [

	^ #newAnnotationType
]
