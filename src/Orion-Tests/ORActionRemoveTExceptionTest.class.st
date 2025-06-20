Class {
	#name : 'ORActionRemoveTExceptionTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTExceptionTest >> setUpAction [ action := ORActionRemoveTException new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTExceptionTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allExceptions anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allExceptions size. action run. self assert: (modelV2 allExceptions size) equals: (initialCount - 1).
]
