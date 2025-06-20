Class {
	#name : 'ORActionAddTExceptionTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTExceptionTest >> setUpAction [

	action := ORActionAddTException new
		          orionModel: modelV2;
		name: 'exceptionTest';
		          typeContainer: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTExceptionTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allExceptions size. action run. self assert: (modelV2 allExceptions size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTExceptionTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'exceptionTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
