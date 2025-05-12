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
