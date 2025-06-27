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
ORActionRemoveJavaParameterTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaParameters anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaParameters size. action run. self assert: (modelV2 allavaParameters size) equals: (initialCount - 1).
]
