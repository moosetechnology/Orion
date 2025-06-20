Class {
	#name : 'ORActionAddTReferenceTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTReferenceTest >> setUpAction [ action := ORActionAddTReference new orionModel: modelV2; referencer: nil; referredEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTReferenceTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allReferences size. action run. self assert: (modelV2 allReferences size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTReferenceTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
