Class {
	#name : 'ORActionAddJavaExceptionTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaExceptionTest >> setUpAction [ action := ORActionAddJavaException new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; interfaceImplementations: nil; visibility: nil; incomingImports: nil; parentPackage: nil; imports: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaExceptionTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaExceptions size. action run. self assert: (modelV2 allavaExceptions size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaExceptionTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
