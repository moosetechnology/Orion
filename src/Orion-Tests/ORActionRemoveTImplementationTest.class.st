Class {
	#name : 'ORActionRemoveTImplementationTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTImplementationTest >> setUpAction [ action := ORActionRemoveTImplementation new orionModel: modelV2; implementingClass: nil; interface: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTImplementationTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allImplementations anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allImplementations size. action run. self assert: (modelV2 allImplementations size) equals: (initialCount - 1).
]
