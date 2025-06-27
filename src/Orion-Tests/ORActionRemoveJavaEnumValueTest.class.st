Class {
	#name : 'ORActionRemoveJavaEnumValueTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaEnumValueTest >> setUpAction [ action := ORActionRemoveJavaEnumValue new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaEnumValueTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaEnumValues anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaEnumValues size. action run. self assert: (modelV2 allavaEnumValues size) equals: (initialCount - 1).
]
