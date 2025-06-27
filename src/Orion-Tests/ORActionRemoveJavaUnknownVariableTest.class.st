Class {
	#name : 'ORActionRemoveJavaUnknownVariableTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaUnknownVariableTest >> setUpAction [ action := ORActionRemoveJavaUnknownVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaUnknownVariableTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaUnknownVariables anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaUnknownVariables size. action run. self assert: (modelV2 allavaUnknownVariables size) equals: (initialCount - 1).
]
