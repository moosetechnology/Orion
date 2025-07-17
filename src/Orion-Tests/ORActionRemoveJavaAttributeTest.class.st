Class {
	#name : 'ORActionRemoveJavaAttributeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionRemoveJavaAttributeTest >> setUpAction [ action := ORActionRemoveJavaAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isTransient: nil; isVolatile: nil; isClassSide: nil; isFinal: nil; visibility: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAttributeTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allAttributes anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allAttributes size.
	action run.
	self assert: modelV2 allAttributes size equals: initialCount - 1
]
