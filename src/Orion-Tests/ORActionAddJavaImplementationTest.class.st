Class {
	#name : 'ORActionAddJavaImplementationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> createEntities [
	modelV1 newImplementationNamed: 'TestImplementation'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> setUpAction [ 

	action := ORActionAddJavaImplementation new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> testAddsCorrectEntity [
			self assert: modelV2 allImplementatioes size equals: 1.
			action run.
			self assert: modelV2 allImplementatioes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
