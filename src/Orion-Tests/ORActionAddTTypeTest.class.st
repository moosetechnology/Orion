Class {
	#name : 'ORActionAddTTypeTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTTypeTest >> setUpAction [

	action := ORActionAddTType new
		          orionModel: modelV2;
			name: 'typeTest';
		          typeContainer: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTTypeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allTypes size. action run. self assert: (modelV2 allTypes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTTypeTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'typeTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
