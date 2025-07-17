Class {
	#name : 'ORActionAddJavaConcretizationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> createEntities [
	modelV1 newConcretizationNamed: 'TestConcretization'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> setUpAction [ 

	action := ORActionAddJavaConcretization new 
		orionModel: modelV2;
		name: 'NewConcretization' ;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> testAddsCorrectEntity [
			self assert: modelV2 allConcretizatioes size equals: 1.
			action run.
			self assert: modelV2 allConcretizatioes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
