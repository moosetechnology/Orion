"
An ORActionAddTCommentTest is a test class for testing the behavior of ORActionAddTComment
"
Class {
	#name : 'ORActionAddTCommentTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTCommentTest >> setUpAction [ action := ORActionAddTComment new orionModel: modelV2; commentedEntity: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTCommentTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allComments size. action run. self assert: (modelV2 allComments size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTCommentTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
