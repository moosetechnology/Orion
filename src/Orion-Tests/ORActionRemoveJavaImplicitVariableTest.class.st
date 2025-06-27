Class {
	#name : 'ORActionRemoveJavaImplicitVariableTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaImplicitVariableTest >> setUpAction [ action := ORActionRemoveJavaImplicitVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaImplicitVariableTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allImplicitVariables anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allImplicitVariables size.
	action run.
	self
		assert: modelV2 allImplicitVariables size
		equals: initialCount - 1
]
