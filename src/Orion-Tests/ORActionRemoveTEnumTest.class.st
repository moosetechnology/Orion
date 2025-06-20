Class {
	#name : 'ORActionRemoveTEnumTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTEnumTest >> setUpAction [ action := ORActionRemoveTEnum new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTEnumTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allEnums anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allEnums size. action run. self assert: (modelV2 allEnums size) equals: (initialCount - 1).
]
