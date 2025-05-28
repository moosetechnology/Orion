Class {
	#name : 'ORActionAddTAnnotationInstanceAttribute',
	#superclass : 'ORActionAdd',
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
ORActionAddTAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstanceAttribute >> run [

	| newEntity |
	newEntity := self orionModel newAnnotationInstanceAttribute.

	self setFamixProperty: #annotationTypeAttribute on: newEntity to: self annotationTypeAttribute. self setFamixProperty: #parentAnnotationInstance on: newEntity to: self parentAnnotationInstance. self setFamixProperty: #value on: newEntity to: self value.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
