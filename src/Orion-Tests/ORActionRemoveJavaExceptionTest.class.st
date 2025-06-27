Class {
	#name : 'ORActionRemoveJavaExceptionTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaExceptionTest >> setUpAction [ action := ORActionRemoveJavaException new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; interfaceImplementations: nil; visibility: nil; incomingImports: nil; parentPackage: nil; imports: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaExceptionTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaExceptions anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaExceptions size. action run. self assert: (modelV2 allavaExceptions size) equals: (initialCount - 1).
]
