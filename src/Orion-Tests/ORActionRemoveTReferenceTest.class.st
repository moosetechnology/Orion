Class {
	#name : 'ORActionRemoveTReferenceTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTReferenceTest >> setUpAction [ action := ORActionRemoveTReference new orionModel: modelV2; referencer: nil; referredEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTReferenceTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allReferences anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allReferences size. action run. self assert: (modelV2 allReferences size) equals: (initialCount - 1).
]
