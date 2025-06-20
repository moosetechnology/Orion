Class {
	#name : 'ORActionAddTImplementationTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTImplementationTest >> setUpAction [ action := ORActionAddTImplementation new orionModel: modelV2; implementingClass: nil; interface: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTImplementationTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allImplementations size. action run. self assert: (modelV2 allImplementations size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTImplementationTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
