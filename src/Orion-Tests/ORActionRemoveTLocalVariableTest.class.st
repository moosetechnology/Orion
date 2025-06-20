Class {
	#name : 'ORActionRemoveTLocalVariableTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTLocalVariableTest >> setUpAction [ action := ORActionRemoveTLocalVariable new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTLocalVariableTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allLocalVariables anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allLocalVariables size. action run. self assert: (modelV2 allLocalVariables size) equals: (initialCount - 1).
]
