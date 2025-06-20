Class {
	#name : 'ORActionMoveTAnnotationInstanceAttributeTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTAnnotationInstanceAttributeTest >> setUpAction [ action := ORActionMoveTAnnotationInstanceAttribute new orionModel: modelV2; annotationTypeAttribute: nil; parentAnnotationInstance: nil; value: nil; yourself.
]
