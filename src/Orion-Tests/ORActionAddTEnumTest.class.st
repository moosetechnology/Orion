"
An ORActionAddTEnumTest is a test class for testing the behavior of ORActionAddTEnum
"
Class {
	#name : 'ORActionAddTEnumTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTEnumTest >> setUpAction [

	action := ORActionAddTEnum new
		          orionModel: modelV2;
		name: 'enumTest';
		          typeContainer: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTEnumTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allEnums size.
	action run.
	self assert: modelV2 allEnums size equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddTEnumTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'enumTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
