Class {
	#name : 'ORActionAddTImplicitVariableTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTImplicitVariableTest >> setUpAction [

	action := ORActionAddTImplicitVariable new
		          orionModel: modelV2;
		name: 'implicitVariableTest';
		          parentBehaviouralEntity: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTImplicitVariableTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allImplicitVariables size. action run. self assert: (modelV2 allImplicitVariables size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTImplicitVariableTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'implicitVariableTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
