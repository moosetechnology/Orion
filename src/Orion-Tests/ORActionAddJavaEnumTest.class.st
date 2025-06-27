Class {
	#name : 'ORActionAddJavaEnumTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaEnumTest >> setUpAction [ action := ORActionAddJavaEnum new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; visibility: nil; incomingImports: nil; receivingInvocations: nil; attributes: nil; comments: nil; imports: nil; superInheritances: nil; subInheritances: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaEnumTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaEnums size. action run. self assert: (modelV2 allavaEnums size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaEnumTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
