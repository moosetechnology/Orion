Class {
	#name : 'ORActionAddTUnknownVariableTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTUnknownVariableTest >> setUpAction [

	action := ORActionAddTUnknownVariable new
		          orionModel: modelV2;
					 name: 'unknownVariableTest';
		          isStub: nil;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTUnknownVariableTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allUnknownVariables size. action run. self assert: (modelV2 allUnknownVariables size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTUnknownVariableTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'unknownVariableTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
