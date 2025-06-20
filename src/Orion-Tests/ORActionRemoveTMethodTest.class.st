Class {
	#name : 'ORActionRemoveTMethodTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTMethodTest >> setUpAction [ action := ORActionRemoveTMethod new orionModel: modelV2; parentType: nil; signature: nil; declaredType: nil; isStub: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTMethodTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allMethods anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allMethods size. action run. self assert: (modelV2 allMethods size) equals: (initialCount - 1).
]
