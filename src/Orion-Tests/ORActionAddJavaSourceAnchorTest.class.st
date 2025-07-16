Class {
	#name : 'ORActionAddJavaSourceAnchorTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> createEntities [
	modelV1 newSourceAnchorNamed: 'TestSourceAnchor'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> setUpAction [ 

action := ORActionAddJavaSourceAnchor new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> testAddsCorrectEntity [
			self assert: modelV2 allSourceAnchoes size equals: 1.
			action run.
			self assert: modelV2 allSourceAnchoes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceAnchorTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
