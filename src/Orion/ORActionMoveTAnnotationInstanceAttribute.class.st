Class {
	#name : 'ORActionMoveTAnnotationInstanceAttribute',
	#superclass : 'ORActionMove',
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
ORActionMoveTAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionMoveTAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'method execution' }
ORActionMoveTAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationInstanceAttribute
]

{ #category : 'accessing' }
ORActionMoveTAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionMoveTAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'accessing' }
ORActionMoveTAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionMoveTAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
