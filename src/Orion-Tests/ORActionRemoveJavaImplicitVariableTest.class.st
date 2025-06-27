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
ORActionRemoveJavaImplicitVariableTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaImplicitVariables anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaImplicitVariables size. action run. self assert: (modelV2 allavaImplicitVariables size) equals: (initialCount - 1).
]
