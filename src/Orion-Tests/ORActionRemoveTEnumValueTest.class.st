Class {
	#name : 'ORActionRemoveTEnumValueTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTEnumValueTest >> setUpAction [ action := ORActionRemoveTEnumValue new orionModel: modelV2; parentEnum: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveTEnumValueTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allEnumValues anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allEnumValues size. action run. self assert: (modelV2 allEnumValues size) equals: (initialCount - 1).
]
