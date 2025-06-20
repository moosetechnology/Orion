Class {
	#name : 'ORActionRemoveTImplicitVariableTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTImplicitVariableTest >> setUpAction [ action := ORActionRemoveTImplicitVariable new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTImplicitVariableTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allImplicitVariables anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allImplicitVariables size. action run. self assert: (modelV2 allImplicitVariables size) equals: (initialCount - 1).
]
