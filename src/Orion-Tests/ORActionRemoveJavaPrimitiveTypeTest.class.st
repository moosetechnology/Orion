Class {
	#name : 'ORActionRemoveJavaPrimitiveTypeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaPrimitiveTypeTest >> setUpAction [ action := ORActionRemoveJavaPrimitiveType new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaPrimitiveTypeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaPrimitiveTypes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaPrimitiveTypes size. action run. self assert: (modelV2 allavaPrimitiveTypes size) equals: (initialCount - 1).
]
