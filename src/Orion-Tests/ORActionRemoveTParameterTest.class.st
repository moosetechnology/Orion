Class {
	#name : 'ORActionRemoveTParameterTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTParameterTest >> setUpAction [ action := ORActionRemoveTParameter new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTParameterTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allParameters anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allParameters size. action run. self assert: (modelV2 allParameters size) equals: (initialCount - 1).
]
