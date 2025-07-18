Class {
	#name : 'ORActionAddJavaImportTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> setUpAction [ 

	action := ORActionAddJavaImport new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> testAddsCorrectEntity [
			self assert: modelV2 allImports size equals: 0.
			action run.
			self assert: modelV2 allImports size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImportTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allImports at: 1.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
