Class {
	#name : 'ORActionRenameTAnnotationType',
	#superclass : 'ORActionRename',
	#instVars : [
		'annotationTypesContainer'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameTAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionRenameTAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'method execution' }
ORActionRenameTAnnotationType >> createVersionnedEntitySelector [

	^ #newAnnotationType
]
