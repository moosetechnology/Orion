Class {
	#name : 'ORActionAddJavaIndexedFileAnchorTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> setUpAction [ 

	action := ORActionAddJavaIndexedFileAnchor new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> testAddsCorrectEntity [
			self assert: modelV2 allIndexedFileAnchors size equals: 0.
			action run.
			self assert: modelV2 allIndexedFileAnchors size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
