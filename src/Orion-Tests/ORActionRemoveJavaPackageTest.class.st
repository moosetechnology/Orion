Class {
	#name : 'ORActionRemoveJavaPackageTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaPackageTest >> setUpAction [ action := ORActionRemoveJavaPackage new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; incomingImports: nil; parentPackage: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaPackageTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaPackages anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaPackages size. action run. self assert: (modelV2 allavaPackages size) equals: (initialCount - 1).
]
