Class {
	#name : 'ORActionRemoveJavaClassTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaClassTest >> setUpAction [ action := ORActionRemoveJavaClass new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; interfaceImplementations: nil; visibility: nil; incomingImports: nil; parentPackage: nil; imports: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaClassTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allClasses anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allClasses size.
	action run.
	self assert: modelV2 allClasses size equals: initialCount - 1
]
