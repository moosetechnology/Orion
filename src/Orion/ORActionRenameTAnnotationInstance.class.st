Class {
	#name : 'ORActionRenameTAnnotationInstance',
	#superclass : 'ORActionRename',
	#instVars : [
		'annotatedEntity',
		'annotationType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameTAnnotationInstance >> annotatedEntity [ ^annotatedEntity
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstance >> annotatedEntity: aValue [ annotatedEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstance >> annotationType [ ^annotationType
]

{ #category : 'accessing' }
ORActionRenameTAnnotationInstance >> annotationType: aValue [ annotationType := aValue
]

{ #category : 'method execution' }
ORActionRenameTAnnotationInstance >> createVersionnedEntitySelector [

	^ #newAnnotationInstance
]
