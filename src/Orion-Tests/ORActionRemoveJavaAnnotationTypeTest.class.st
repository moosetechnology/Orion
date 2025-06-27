Class {
	#name : 'ORActionRemoveJavaAnnotationTypeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaAnnotationTypeTest >> setUpAction [ action := ORActionRemoveJavaAnnotationType new orionModel: modelV2; sourceAnchor: nil; name: nil; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; typeContainer: nil; typedEntities: nil; isStub: nil; incomingReferences: nil; methods: nil; visibility: nil; implementations: nil; parentPackage: nil; attributes: nil; comments: nil; superInheritances: nil; subInheritances: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaAnnotationTypeTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaAnnotationTypes anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaAnnotationTypes size. action run. self assert: (modelV2 allavaAnnotationTypes size) equals: (initialCount - 1).
]
