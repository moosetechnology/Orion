Class {
	#name : 'ORActionAddTInheritanceTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTInheritanceTest >> setUpAction [ action := ORActionAddTInheritance new orionModel: modelV2; subclass: nil; superclass: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTInheritanceTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allInheritances size. action run. self assert: (modelV2 allInheritances size) equals: (initialCount + 1).
]

{ #category : 'testing' }
ORActionAddTInheritanceTest >> testAddsOneEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size + 1.
	self assert: modelV2 allInheritanceDefinitions size equals: modelV1 allInheritanceDefinitions size + 1.
	self assert: modelV2 allClasses size equals: modelV1 allClasses size.

]

{ #category : 'tests' }
ORActionAddTInheritanceTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
