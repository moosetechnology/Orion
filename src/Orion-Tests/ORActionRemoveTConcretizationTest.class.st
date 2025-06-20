Class {
	#name : 'ORActionRemoveTConcretizationTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTConcretizationTest >> setUpAction [ action := ORActionRemoveTConcretization new orionModel: modelV2; genericEntity: nil; concreteEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTConcretizationTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allConcretizations anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allConcretizations size. action run. self assert: (modelV2 allConcretizations size) equals: (initialCount - 1).
]
