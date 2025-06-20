Class {
	#name : 'ORActionAddTLocalVariableTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTLocalVariableTest >> setUpAction [

	action := ORActionAddTLocalVariable new
		          orionModel: modelV2;
		name: 'localVariableTest';
		          parentBehaviouralEntity: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTLocalVariableTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allLocalVariables size. action run. self assert: (modelV2 allLocalVariables size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTLocalVariableTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'localVariableTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
