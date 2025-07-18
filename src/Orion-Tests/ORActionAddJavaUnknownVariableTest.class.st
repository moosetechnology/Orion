Class {
	#name : 'ORActionAddJavaUnknownVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaUnknownVariableTest >> createEntities [
	modelV1 newUnknownVariableNamed: 'TestUnknownVariable'
]

{ #category : 'running' }
ORActionAddJavaUnknownVariableTest >> setUpAction [ 

	action := ORActionAddJavaUnknownVariable new 
		orionModel: modelV2;
		name: 'NewUnknownVariable';
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaUnknownVariableTest >> testAddsCorrectEntity [
			self assert: modelV2 allUnknownVariables size equals: 1.
			action run.
			self assert: modelV2 allUnknownVariables size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaUnknownVariableTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'NewUnknownVariable'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
