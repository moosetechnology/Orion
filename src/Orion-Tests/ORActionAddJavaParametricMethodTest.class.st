Class {
	#name : 'ORActionAddJavaParametricMethodTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricMethodTest >> createEntities [
	modelV1 newParametricMethodNamed: 'TestParametricMethod'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricMethodTest >> setUpAction [ 

	action := ORActionAddJavaParametricMethod new 
		orionModel: modelV2;
		name: 'NewParametricMethod' ;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricMethodTest >> testAddsCorrectEntity [
			self assert: modelV2 allParametricMethoes size equals: 1.
			action run.
			self assert: modelV2 allParametricMethoes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricMethodTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
