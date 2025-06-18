"
I remove a new FamixTAnnotationType in a MooseModel
I need the following properties of the new annotationtype

-`annotationTypesContainer`
"
Class {
	#name : 'ORActionRemoveTAnnotationType',
	#superclass : 'ORActionRemove',
	#instVars : [
		'annotationTypesContainer'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationType >> createVersionnedEntitySelector [

	^ #newAnnotationType
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationType >> run [

	self setFamixProperty: #annotationTypesContainer on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]
