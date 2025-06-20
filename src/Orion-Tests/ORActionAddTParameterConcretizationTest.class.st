"
An ORActionAddTParameterConcretizationTest is a test class for testing the behavior of ORActionAddTParameterConcretization
"
Class {
	#name : 'ORActionAddTParameterConcretizationTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTParameterConcretizationTest >> setUpAction [ action := ORActionAddTParameterConcretization new orionModel: modelV2; genericParameter: nil; concreteParameter: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTParameterConcretizationTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allParameterConcretizations size. action run. self assert: (modelV2 allParameterConcretizations size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTParameterConcretizationTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
