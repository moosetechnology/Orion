Class {
	#name : 'ORActionRemoveTAnnotationInstanceAttributeTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTAnnotationInstanceAttributeTest >> setUpAction [ action := ORActionRemoveTAnnotationInstanceAttribute new orionModel: modelV2; annotationTypeAttribute: nil; parentAnnotationInstance: nil; value: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTAnnotationInstanceAttributeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allAnnotationInstanceAttributes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allAnnotationInstanceAttributes size. action run. self assert: (modelV2 allAnnotationInstanceAttributes size) equals: (initialCount - 1).
]
