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
		name: 'PackageTest'.

]

{ #category : 'tests' }
ORActionAddTPackageTest >> testAddsCorrectEntity [ 

	action run.
	self
		assert: modelV2 allPackages size
		equals: modelV1 allPackages size + 1
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testEntityIsVersioned [

	| package |

	action run.

	package := modelV2 entityNamed: 'PackageTest'.

	self assert: package notNil.
	self assert: (modelV2 includes: package ).
	self deny: (modelV1 includes: package ).
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testNoAssociatedEntities [

	| entity |
	action run.

	entity := modelV2 entityNamed: #PackageTest.

	self assert: entity childEntities isEmpty.
]

{ #category : 'tests' }
ORActionAddTPackageTest >> testSetsPrimitiveProperties [

	| entity |
	action run.

	entity := modelV2 entityNamed: #PackageTest.

	self deny: entity isStub.
]
