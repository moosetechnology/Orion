Class {
	#name : 'ORActionAddTAnnotationInstance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotatedEntity',
		'annotationType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotatedEntity [ ^annotatedEntity
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotatedEntity: aValue [ annotatedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotationType [ ^annotationType
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotationType: aValue [ annotationType := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> attributes: aValue [ attributes := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstance >> run [

	| newEntity |
	newEntity := self orionModel newAnnotationInstance.

	self setFamixProperty: #annotatedEntity on: newEntity to: self annotatedEntity. self setFamixProperty: #annotationType on: newEntity to: self annotationType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
