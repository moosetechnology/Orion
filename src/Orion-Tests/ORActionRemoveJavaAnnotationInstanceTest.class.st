Class {
	#name : 'ORActionRemoveJavaAnnotationInstanceTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationInstanceTest >> setUpAction [ action := ORActionRemoveJavaAnnotationInstance new orionModel: modelV2; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationInstanceTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaAnnotationInstances anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaAnnotationInstances size. action run. self assert: (modelV2 allavaAnnotationInstances size) equals: (initialCount - 1).
]
