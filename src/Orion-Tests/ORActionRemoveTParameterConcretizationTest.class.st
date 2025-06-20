Class {
	#name : 'ORActionRemoveTParameterConcretizationTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTParameterConcretizationTest >> setUpAction [ action := ORActionRemoveTParameterConcretization new orionModel: modelV2; genericParameter: nil; concreteParameter: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTParameterConcretizationTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allParameterConcretizations anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allParameterConcretizations size. action run. self assert: (modelV2 allParameterConcretizations size) equals: (initialCount - 1).
]
