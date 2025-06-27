Class {
	#name : 'ORActionAddJavaLocalVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaLocalVariableTest >> setUpAction [ action := ORActionAddJavaLocalVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaLocalVariableTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allLocalVariables size.
	action run.
	self
		assert: modelV2 allLocalVariables size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaLocalVariableTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
