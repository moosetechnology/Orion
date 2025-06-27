Class {
	#name : 'ORActionAddJavaAttributeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaAttributeTest >> setUpAction [ action := ORActionAddJavaAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isTransient: nil; isVolatile: nil; isClassSide: nil; isFinal: nil; visibility: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaAttributeTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allAttributes size.
	action run.
	self assert: modelV2 allAttributes size equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaAttributeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
