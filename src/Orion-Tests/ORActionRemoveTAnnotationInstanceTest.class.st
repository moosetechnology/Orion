Class {
	#name : 'ORActionRemoveTAnnotationInstanceTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTAnnotationInstanceTest >> setUpAction [ action := ORActionRemoveTAnnotationInstance new orionModel: modelV2; annotatedEntity: nil; annotationType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTAnnotationInstanceTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allAnnotationInstances anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allAnnotationInstances size. action run. self assert: (modelV2 allAnnotationInstances size) equals: (initialCount - 1).
]
