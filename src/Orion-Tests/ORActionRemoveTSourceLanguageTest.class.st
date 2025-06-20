Class {
	#name : 'ORActionRemoveTSourceLanguageTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTSourceLanguageTest >> setUpAction [ action := ORActionRemoveTSourceLanguage new orionModel: modelV2; yourself.
]

{ #category : 'tests' }
ORActionRemoveTSourceLanguageTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allSourceLanguages anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allSourceLanguages size. action run. self assert: (modelV2 allSourceLanguages size) equals: (initialCount - 1).
]
