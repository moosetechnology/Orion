Class {
	#name : 'ORActionRemoveJavaTypeTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionRemoveJavaTypeTest >> setUpAction [ action := ORActionRemoveJavaType new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaTypeTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allTypes anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allTypes size.
	action run.
	self assert: modelV2 allTypes size equals: initialCount - 1
]
