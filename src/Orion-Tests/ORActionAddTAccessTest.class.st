Class {
	#name : 'ORActionAddTAccessTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTAccessTest >> setUpAction [ action := ORActionAddTAccess new orionModel: modelV2; accessor: nil; isWrite: nil; variable: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTAccessTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allAccesses size. action run. self assert: (modelV2 allAccesses size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTAccessTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
