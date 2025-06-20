Class {
	#name : 'ORActionRemoveTAccessTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTAccessTest >> setUpAction [ action := ORActionRemoveTAccess new orionModel: modelV2; accessor: nil; isWrite: nil; variable: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTAccessTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allAccesss anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allAccesss size. action run. self assert: (modelV2 allAccesss size) equals: (initialCount - 1).
]
