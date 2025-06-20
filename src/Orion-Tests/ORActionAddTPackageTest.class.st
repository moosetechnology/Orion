Class {
	#name : 'ORActionAddTPackageTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTPackageTest >> setUpAction [

	action := ORActionAddTPackage new
		          orionModel: modelV2;
		name: 'packageTest';
		          isStub: nil;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allPackages size. action run. self assert: (modelV2 allPackages size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'packageTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testNoAssociatedEntities [

	| entity |
	action run.

	entity := modelV2 entityNamed: #packageTest.

	self assert: entity childEntities isEmpty
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testSetsPrimitiveProperties [

	| entity |
	action run.

	entity := modelV2 entityNamed: #packageTest.

	self deny: entity isStub
]
