Class {
	#name : 'ORActionAddJavaAnnotationTypeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaAnnotationTypeTest >> setUpAction [ action := ORActionAddJavaAnnotationType new orionModel: modelV2; sourceAnchor: nil; name: nil; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; typeContainer: nil; typedEntities: nil; isStub: nil; incomingReferences: nil; methods: nil; visibility: nil; implementations: nil; parentPackage: nil; attributes: nil; comments: nil; superInheritances: nil; subInheritances: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaAnnotationTypes size. action run. self assert: (modelV2 allavaAnnotationTypes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
