Class {
	#name : 'ORActionRemoveJavaAnnotationInstanceTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationInstanceTest >> setUpAction [ action := ORActionRemoveJavaAnnotationInstance new orionModel: modelV2; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationInstanceTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allAnnotationInstances anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allAnnotationInstances size.
	action run.
	self
		assert: modelV2 allAnnotationInstances size
		equals: initialCount - 1
]
