Class {
	#name : 'ORActionRemoveTUnknownVariableTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTUnknownVariableTest >> setUpAction [ action := ORActionRemoveTUnknownVariable new orionModel: modelV2; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTUnknownVariableTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allUnknownVariables anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allUnknownVariables size. action run. self assert: (modelV2 allUnknownVariables size) equals: (initialCount - 1).
]
