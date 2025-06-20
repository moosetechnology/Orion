Class {
	#name : 'ORActionAddTEnumValueTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTEnumValueTest >> setUpAction [

	action := ORActionAddTEnumValue new
		          orionModel: modelV2;
		name: 'enumValueTest';
		          parentEnum: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTEnumValueTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allEnumValues size. action run. self assert: (modelV2 allEnumValues size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTEnumValueTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'enumValueTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
