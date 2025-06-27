Class {
	#name : 'ORActionRemoveJavaAnnotationInstanceAttributeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationInstanceAttributeTest >> setUpAction [ action := ORActionRemoveJavaAnnotationInstanceAttribute new orionModel: modelV2; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationInstanceAttributeTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allAnnotationInstanceAttributes anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allAnnotationInstanceAttributes size.
	action run.
	self
		assert: modelV2 allAnnotationInstanceAttributes size
		equals: initialCount - 1
]
