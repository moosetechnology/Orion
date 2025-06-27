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
ORActionRemoveJavaEnumTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allEnums anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allEnums size.
	action run.
	self assert: modelV2 allEnums size equals: initialCount - 1
]
