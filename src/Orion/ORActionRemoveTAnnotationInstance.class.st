"
I remove a new FamixTAnnotationInstance in a MooseModel
I need the following properties of the new annotationinstance

-`annotatedEntity`
-`annotationType`
"
Class {
	#name : 'ORActionRemoveTAnnotationInstance',
	#superclass : 'ORActionRemove',
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
ORActionRemoveTAnnotationInstance class >> createVersionnedEntitySelector [ ^ #newAnnotationInstance
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstance class >> run [
	super run.
	entity annotatedEntity: nil.
	entity annotationType: nil.
	entity attributes: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

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

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> attributes: aValue [ attributes := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstance >> createVersionnedEntitySelector [ ^ #newAnnotationInstance
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstance >> run [
	super run.
	entity annotatedEntity: nil.
	entity annotationType: nil.
	entity attributes: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]
