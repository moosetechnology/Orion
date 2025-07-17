Class {
	#name : 'ORActionRemoveJavaUnknownVariableTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionRemoveJavaUnknownVariableTest >> setUpAction [ action := ORActionRemoveJavaUnknownVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaUnknownVariableTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allUnknownVariables anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allUnknownVariables size.
	action run.
	self
		assert: modelV2 allUnknownVariables size
		equals: initialCount - 1
]
