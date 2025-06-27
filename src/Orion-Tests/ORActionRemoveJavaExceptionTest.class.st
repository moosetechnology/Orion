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
ORActionRemoveJavaExceptionTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allExceptions anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allExceptions size.
	action run.
	self assert: modelV2 allExceptions size equals: initialCount - 1
]
