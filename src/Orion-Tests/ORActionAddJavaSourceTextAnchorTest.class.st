Class {
	#name : 'ORActionAddJavaSourceTextAnchorTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> createEntities [
	modelV1 newSourceTextAnchorNamed: 'TestSourceTextAnchor'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> setUpAction [ 

	action := ORActionAddJavaSourceTextAnchor new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceTextAnchorTest >> testAddsCorrectEntity [
			self assert: modelV2 allSourceTextAnchoes size equals: 1.
			action run.
			self assert: modelV2 allSourceTextAnchoes size equals: 2.
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
