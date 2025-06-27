Class {
	#name : 'ORActionAddJavaPackageTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaPackageTest >> setUpAction [ action := ORActionAddJavaPackage new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; incomingImports: nil; parentPackage: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaPackageTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaPackages size. action run. self assert: (modelV2 allavaPackages size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaPackageTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
