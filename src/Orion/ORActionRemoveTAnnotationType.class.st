"
I remove a FamixTAnnotationType in a MooseModel
I need the following properties of the  annotationtype

-`annotationTypesContainer`
-`instances`
"
Class {
	#name : 'ORActionRemoveTAnnotationType',
	#superclass : 'ORActionRemove',
	#instVars : [
		'annotationTypesContainer',
		'instances'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTAnnotationType class >> createVersionnedEntitySelector [ ^ #newAnnotationType
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationType class >> run [
	super run.
	entity annotationTypesContainer: nil.
	entity instances: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationType >> createVersionnedEntitySelector [ ^ #newAnnotationType
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationType >> instances [ ^instances
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationType >> instances: aValue [ instances := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationType >> run [

	super run.
	entity annotationTypesContainer: nil.
	entity instances: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]
