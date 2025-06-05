Class {
	#name : 'ORActionRemoveTAnnotationInstance',
	#superclass : 'ORActionRemove',
	#instVars : [
		'annotatedEntity',
		'annotationType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> annotatedEntity [ ^annotatedEntity
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> annotatedEntity: aValue [ annotatedEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> annotationType [ ^annotationType
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> annotationType: aValue [ annotationType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstance >> createVersionnedEntitySelector [

	^ #newAnnotationInstance
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstance >> run [

	self setFamixProperty: #annotatedEntity on: entity to: nil. self setFamixProperty: #annotationType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]
