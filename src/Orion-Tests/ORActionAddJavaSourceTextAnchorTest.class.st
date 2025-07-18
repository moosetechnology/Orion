Class {
	#name : 'ORActionAddJavaSourceTextAnchorTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> setUpAction [ 

	action := ORActionAddJavaSourceTextAnchor new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> testAddsCorrectEntity [
			self assert: modelV2 allSourceTextAnchors size equals: 1.
			action run.
			self assert: modelV2 allSourceTextAnchors size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
