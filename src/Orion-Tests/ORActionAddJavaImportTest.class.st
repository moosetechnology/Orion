Class {
	#name : 'ORActionAddJavaImportTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> createEntities [
	modelV1 newImportNamed: 'TestImport'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> setUpAction [ 

action := ORActionAddJavaImport new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> testAddsCorrectEntity [
			self assert: modelV2 allImpores size equals: 1.
			action run.
			self assert: modelV2 allImpores size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
