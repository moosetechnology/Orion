Class {
	#name : 'ORActionAddTPrimitiveTypeTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTPrimitiveTypeTest >> setUpAction [

	action := ORActionAddTPrimitiveType new
		          orionModel: modelV2;
		name: 'primitiveTypeTest';
		          typeContainer: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTPrimitiveTypeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allPrimitiveTypes size. action run. self assert: (modelV2 allPrimitiveTypes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTPrimitiveTypeTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'primitiveTypeTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
