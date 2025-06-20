Class {
	#name : 'ORActionRemoveTPackageTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTPackageTest >> setUpAction [ action := ORActionRemoveTPackage new orionModel: modelV2; isStub: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTPackageTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allPackages anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allPackages size. action run. self assert: (modelV2 allPackages size) equals: (initialCount - 1).
]
