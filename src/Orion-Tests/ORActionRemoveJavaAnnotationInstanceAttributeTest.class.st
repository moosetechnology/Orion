Class {
	#name : 'ORActionRemoveJavaAnnotationInstanceAttributeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationInstanceAttributeTest >> setUpAction [ action := ORActionRemoveJavaAnnotationInstanceAttribute new orionModel: modelV2; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationInstanceAttributeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaAnnotationInstanceAttributes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaAnnotationInstanceAttributes size. action run. self assert: (modelV2 allavaAnnotationInstanceAttributes size) equals: (initialCount - 1).
]
