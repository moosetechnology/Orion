Class {
	#name : 'ORActionRemoveJavaEnumTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaEnumTest >> setUpAction [ action := ORActionRemoveJavaEnum new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; visibility: nil; incomingImports: nil; receivingInvocations: nil; attributes: nil; comments: nil; imports: nil; superInheritances: nil; subInheritances: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaEnumTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaEnums anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaEnums size. action run. self assert: (modelV2 allavaEnums size) equals: (initialCount - 1).
]
