Class {
	#name : 'ORActionAddJavaUnknownVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaUnknownVariableTest >> setUpAction [ action := ORActionAddJavaUnknownVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaUnknownVariableTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allUnknownVariables size.
	action run.
	self
		assert: modelV2 allUnknownVariables size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaUnknownVariableTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
