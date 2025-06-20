"
An ORActionAddTParameterTest is a test class for testing the behavior of ORActionAddTParameter
"
Class {
	#name : 'ORActionAddTParameterTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTParameterTest >> setUpAction [

	action := ORActionAddTParameter new
		          orionModel: modelV2;
		name: 'parameterTest';
		          parentBehaviouralEntity: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTParameterTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allParameters size. action run. self assert: (modelV2 allParameters size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTParameterTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'parameterTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
