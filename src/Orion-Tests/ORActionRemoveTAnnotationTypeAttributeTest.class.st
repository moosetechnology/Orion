Class {
	#name : 'ORActionRemoveTAnnotationTypeAttributeTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTAnnotationTypeAttributeTest >> setUpAction [ action := ORActionRemoveTAnnotationTypeAttribute new orionModel: modelV2; parentType: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTAnnotationTypeAttributeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allAnnotationTypeAttributes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allAnnotationTypeAttributes size. action run. self assert: (modelV2 allAnnotationTypeAttributes size) equals: (initialCount - 1).
]
