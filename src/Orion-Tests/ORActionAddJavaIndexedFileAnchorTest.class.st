Class {
	#name : 'ORActionAddJavaIndexedFileAnchorTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> createEntities [
	modelV1 newIndexedFileAnchorNamed: 'TestIndexedFileAnchor'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> setUpAction [ 

	action := ORActionAddJavaIndexedFileAnchor new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> testAddsCorrectEntity [
			self assert: modelV2 allIndexedFileAnchoes size equals: 1.
			action run.
			self assert: modelV2 allIndexedFileAnchoes size equals: 2.
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
