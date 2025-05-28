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

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationInstance >> attributes: aValue [ attributes := aValue
]
