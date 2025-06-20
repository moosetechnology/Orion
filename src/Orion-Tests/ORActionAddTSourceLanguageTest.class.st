Class {
	#name : 'ORActionAddTSourceLanguageTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTSourceLanguageTest >> setUpAction [ action := ORActionAddTSourceLanguage new orionModel: modelV2; yourself.
]

{ #category : 'tests' }
ORActionAddTSourceLanguageTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allSourceLanguages size. action run. self assert: (modelV2 allSourceLanguages size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTSourceLanguageTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
