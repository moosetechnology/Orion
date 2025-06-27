Class {
	#name : 'ORActionRemoveJavaAttributeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAttributeTest >> setUpAction [ action := ORActionRemoveJavaAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isTransient: nil; isVolatile: nil; isClassSide: nil; isFinal: nil; visibility: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAttributeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaAttributes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaAttributes size. action run. self assert: (modelV2 allavaAttributes size) equals: (initialCount - 1).
]
