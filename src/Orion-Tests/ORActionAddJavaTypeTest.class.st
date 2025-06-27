Class {
	#name : 'ORActionAddJavaTypeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaTypeTest >> setUpAction [ action := ORActionAddJavaType new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaTypeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaTypes size. action run. self assert: (modelV2 allavaTypes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaTypeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
