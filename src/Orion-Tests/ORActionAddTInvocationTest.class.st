Class {
	#name : 'ORActionAddTInvocationTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTInvocationTest >> setUpAction [ action := ORActionAddTInvocation new orionModel: modelV2; receiver: nil; sender: nil; next: nil; previous: nil; sourceAnchor: nil; signature: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTInvocationTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allInvocations size. action run. self assert: (modelV2 allInvocations size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTInvocationTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
