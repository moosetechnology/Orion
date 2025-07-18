Class {
	#name : 'ORActionAddJavaSourceLanguageTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceLanguageTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceLanguageTest >> setUpAction [ 

	action := ORActionAddJavaSourceLanguage new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceLanguageTest >> testAddsCorrectEntity [
			self assert: modelV2 allSourceLanguages size equals: 0.
			action run.
			self assert: modelV2 allSourceLanguages size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaSourceLanguageTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allSourceLanguages first.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
