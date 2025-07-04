Class {
	#name : 'ORActionAddJavaIndexedFileAnchorTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> createBasicEntities [
	modelV1 newIndexedFileAnchorNamed: 'TestIndexedFileAnchor'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaIndexedFileAnchorTest >> setUpAction [ 

action := ORActionAddJavaIndexedFileAnchor new 
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
