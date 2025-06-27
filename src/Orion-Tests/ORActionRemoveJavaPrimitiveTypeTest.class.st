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
ORActionRemoveJavaPrimitiveTypeTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allPrimitiveTypes anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allPrimitiveTypes size.
	action run.
	self assert: modelV2 allPrimitiveTypes size equals: initialCount - 1
]
