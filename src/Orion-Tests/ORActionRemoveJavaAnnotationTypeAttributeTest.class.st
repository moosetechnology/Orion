Class {
	#name : 'ORActionRemoveJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationTypeAttributeTest >> setUpAction [ action := ORActionRemoveJavaAnnotationTypeAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationTypeAttributeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaAnnotationTypeAttributes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaAnnotationTypeAttributes size. action run. self assert: (modelV2 allavaAnnotationTypeAttributes size) equals: (initialCount - 1).
]
