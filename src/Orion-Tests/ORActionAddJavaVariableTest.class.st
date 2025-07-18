Class {
	#name : 'ORActionAddJavaVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> setUpAction [ 

	action := ORActionAddJavaVariable new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> testAddsCorrectEntity [
			self assert: modelV2 allVariables size equals: 0.
			action run.
			self assert: modelV2 allVariables size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allVariables first.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
