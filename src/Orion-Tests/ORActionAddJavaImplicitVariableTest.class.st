Class {
	#name : 'ORActionAddJavaImplicitVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaImplicitVariableTest >> setUpAction [ action := ORActionAddJavaImplicitVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaImplicitVariableTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allImplicitVariables size.
	action run.
	self
		assert: modelV2 allImplicitVariables size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaImplicitVariableTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
