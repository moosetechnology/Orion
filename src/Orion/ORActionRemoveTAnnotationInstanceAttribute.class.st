"
I remove a new FamixTAnnotationInstanceAttribute in a MooseModel
I need the following properties of the new annotationinstanceattribute

-`annotationTypeAttribute`
-`parentAnnotationInstance`
-`value`
"
Class {
	#name : 'ORActionRemoveTAnnotationInstanceAttribute',
	#superclass : 'ORActionRemove',
	#instVars : [
		'annotationTypeAttribute',
		'parentAnnotationInstance',
		'value'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstanceAttribute class >> createVersionnedEntitySelector [ ^ #newAnnotationInstanceAttribute
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstanceAttribute class >> run [
	super run.
	entity annotationTypeAttribute: nil.
	entity parentAnnotationInstance: nil.
	entity value: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstanceAttribute >> createVersionnedEntitySelector [ ^ #newAnnotationInstanceAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstanceAttribute >> run [
	super run.
	entity annotationTypeAttribute: nil.
	entity parentAnnotationInstance: nil.
	entity value: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
