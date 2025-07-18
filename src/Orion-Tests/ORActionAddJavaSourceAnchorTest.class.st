Class {
	#name : 'ORActionAddJavaSourceAnchorTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> setUpAction [ 

	action := ORActionAddJavaSourceAnchor new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> testAddsCorrectEntity [
			self assert: modelV2 allSourceAnchors size equals: 0.
			action run.
			self assert: modelV2 allSourceAnchors size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allSourceAnchors first.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
