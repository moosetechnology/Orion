Class {
	#name : 'ORActionAddJavaConcretizationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> createEntities [
]

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> setUpAction [ 

	action := ORActionAddJavaConcretization new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> testAddsCorrectEntity [
			self assert: modelV2 allConcretizations size equals: 0.
			action run.
			self assert: modelV2 allConcretizations size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaConcretizationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allConcretizations first.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
