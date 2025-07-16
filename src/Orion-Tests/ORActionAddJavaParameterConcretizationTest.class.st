Class {
	#name : 'ORActionAddJavaParameterConcretizationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterConcretizationTest >> createEntities [
	modelV1 newParameterConcretizationNamed: 'TestParameterConcretization'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterConcretizationTest >> setUpAction [ 

action := ORActionAddJavaParameterConcretization new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterConcretizationTest >> testAddsCorrectEntity [
			self assert: modelV2 allParameterConcretizatioes size equals: 1.
			action run.
			self assert: modelV2 allParameterConcretizatioes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterConcretizationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
