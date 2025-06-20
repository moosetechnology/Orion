Class {
	#name : 'ORActionRemoveTImportTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTImportTest >> setUpAction [ action := ORActionRemoveTImport new orionModel: modelV2; importedEntity: nil; importingEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTImportTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allImports anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allImports size. action run. self assert: (modelV2 allImports size) equals: (initialCount - 1).
]
