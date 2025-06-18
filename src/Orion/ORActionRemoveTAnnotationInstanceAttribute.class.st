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

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationInstanceAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationInstanceAttribute >> run [

	self setFamixProperty: #annotationTypeAttribute on: entity to: nil. self setFamixProperty: #parentAnnotationInstance on: entity to: nil. self setFamixProperty: #value on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
