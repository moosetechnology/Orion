Class {
	#name : 'ORActionRemoveTAttributeTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTAttributeTest >> setUpAction [ action := ORActionRemoveTAttribute new orionModel: modelV2; parentType: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTAttributeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allAttributes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allAttributes size. action run. self assert: (modelV2 allAttributes size) equals: (initialCount - 1).
]
