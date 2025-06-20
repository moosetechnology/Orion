Class {
	#name : 'ORActionRemoveTTypeTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTTypeTest >> setUpAction [ action := ORActionRemoveTType new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTTypeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allTypes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allTypes size. action run. self assert: (modelV2 allTypes size) equals: (initialCount - 1).
]
