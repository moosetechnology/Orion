Class {
	#name : 'ORActionAddJavaCommentTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaCommentTest >> createEntities [
	modelV1 newCommentNamed: 'TestComment'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaCommentTest >> setUpAction [ 

	action := ORActionAddJavaComment new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaCommentTest >> testAddsCorrectEntity [
			self assert: modelV2 allCommenes size equals: 1.
			action run.
			self assert: modelV2 allCommenes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaCommentTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
