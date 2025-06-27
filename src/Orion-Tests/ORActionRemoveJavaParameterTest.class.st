Class {
	#name : 'ORActionRemoveJavaParameterTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaParameterTest >> setUpAction [ action := ORActionRemoveJavaParameter new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaParameterTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allParameters anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allParameters size.
	action run.
	self assert: modelV2 allParameters size equals: initialCount - 1
]
