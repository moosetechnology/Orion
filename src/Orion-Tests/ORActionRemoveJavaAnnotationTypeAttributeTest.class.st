Class {
	#name : 'ORActionRemoveJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationTypeAttributeTest >> setUpAction [ action := ORActionRemoveJavaAnnotationTypeAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationTypeAttributeTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allAnnotationTypeAttributes anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allAnnotationTypeAttributes size.
	action run.
	self
		assert: modelV2 allAnnotationTypeAttributes size
		equals: initialCount - 1
]
