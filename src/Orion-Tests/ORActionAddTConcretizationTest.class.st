"
An ORActionAddTConcretizationTest is a test class for testing the behavior of ORActionAddTConcretization
"
Class {
	#name : 'ORActionAddTConcretizationTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTConcretizationTest >> setUpAction [ action := ORActionAddTConcretization new orionModel: modelV2; genericEntity: nil; concreteEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTConcretizationTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allConcretizations size. action run. self assert: (modelV2 allConcretizations size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTConcretizationTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
