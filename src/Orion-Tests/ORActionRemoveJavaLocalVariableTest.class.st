Class {
	#name : 'ORActionRemoveJavaLocalVariableTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaLocalVariableTest >> setUpAction [ action := ORActionRemoveJavaLocalVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaLocalVariableTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allLocalVariables anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allLocalVariables size.
	action run.
	self assert: modelV2 allLocalVariables size equals: initialCount - 1
]
