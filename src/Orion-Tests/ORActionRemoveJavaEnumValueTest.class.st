Class {
	#name : 'ORActionRemoveJavaEnumValueTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaEnumValueTest >> setUpAction [ action := ORActionRemoveJavaEnumValue new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaEnumValueTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allEnumValues anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allEnumValues size.
	action run.
	self assert: modelV2 allEnumValues size equals: initialCount - 1
]
