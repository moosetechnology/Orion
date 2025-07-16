Class {
	#name : 'ORActionAddJavaPackageTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaPackageTest >> createEntities [
	modelV1 newPackageNamed: 'TestPackage'
]

{ #category : 'running' }
ORActionAddJavaPackageTest >> setUpAction [ 

action := ORActionAddJavaPackage new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaPackageTest >> testAddsCorrectEntity [
			self assert: modelV2 allPackages size equals: 1.
			action run.
			self assert: modelV2 allPackages size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaPackageTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
