Class {
	#name : 'ORActionRemoveTAnnotationTypeTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTAnnotationTypeTest >> setUpAction [ action := ORActionRemoveTAnnotationType new orionModel: modelV2; annotationTypesContainer: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTAnnotationTypeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allAnnotationTypes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allAnnotationTypes size. action run. self assert: (modelV2 allAnnotationTypes size) equals: (initialCount - 1).
]
