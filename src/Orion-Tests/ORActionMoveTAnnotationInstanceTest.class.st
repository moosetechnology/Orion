Class {
	#name : 'ORActionMoveTAnnotationInstanceTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTAnnotationInstanceTest >> setUpAction [ action := ORActionMoveTAnnotationInstance new orionModel: modelV2; annotatedEntity: nil; annotationType: nil; yourself.
]
