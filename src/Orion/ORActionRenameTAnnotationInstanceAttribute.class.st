Class {
	#name : 'ORActionRenameTAnnotationInstanceAttribute',
	#superclass : 'ORActionRename',
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
ORActionRenameTAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'method execution' }
ORActionRenameTAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationInstanceAttribute
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
