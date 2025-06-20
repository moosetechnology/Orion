Class {
	#name : 'ORActionRemoveTPrimitiveTypeTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTPrimitiveTypeTest >> setUpAction [ action := ORActionRemoveTPrimitiveType new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTPrimitiveTypeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allPrimitiveTypes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allPrimitiveTypes size. action run. self assert: (modelV2 allPrimitiveTypes size) equals: (initialCount - 1).
]
