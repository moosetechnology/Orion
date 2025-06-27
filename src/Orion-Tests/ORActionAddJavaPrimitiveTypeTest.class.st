Class {
	#name : 'ORActionAddJavaPrimitiveTypeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaPrimitiveTypeTest >> setUpAction [ action := ORActionAddJavaPrimitiveType new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaPrimitiveTypeTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allPrimitiveTypes size.
	action run.
	self
		assert: modelV2 allPrimitiveTypes size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaPrimitiveTypeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
