Class {
	#name : 'ORActionRemoveJavaPackageTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionRemoveJavaPackageTest >> setUpAction [ action := ORActionRemoveJavaPackage new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; incomingImports: nil; parentPackage: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaPackageTest >> testRemovesCorrectEntity [

	| initialCount entityToRemove |
	entityToRemove := modelV1 allPackages anyOne.
	self
		assert: entityToRemove notNil.
	action entity: entityToRemove.
	initialCount := modelV1 allPackages size.
	action run.
	self assert: modelV2 allPackages size equals: initialCount - 1
]
