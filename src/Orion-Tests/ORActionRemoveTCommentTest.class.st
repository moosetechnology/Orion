Class {
	#name : 'ORActionRemoveTCommentTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTCommentTest >> setUpAction [ action := ORActionRemoveTComment new orionModel: modelV2; commentedEntity: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTCommentTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allComments anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allComments size. action run. self assert: (modelV2 allComments size) equals: (initialCount - 1).
]
