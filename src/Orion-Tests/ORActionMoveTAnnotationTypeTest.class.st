Class {
	#name : 'ORActionMoveTAnnotationTypeTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTAnnotationTypeTest >> setUpAction [ action := ORActionMoveTAnnotationType new orionModel: modelV2; annotationTypesContainer: nil; yourself.
]
