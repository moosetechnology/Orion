Class {
	#name : 'ORActionRemoveTInvocationTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTInvocationTest >> setUpAction [ action := ORActionRemoveTInvocation new orionModel: modelV2; receiver: nil; sender: nil; next: nil; previous: nil; sourceAnchor: nil; signature: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTInvocationTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allInvocations anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allInvocations size. action run. self assert: (modelV2 allInvocations size) equals: (initialCount - 1).
]
