Class {
	#name : 'ORActionAddJavaImplicitVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaImplicitVariableTest >> createEntities [
	modelV1 newImplicitVariableNamed: 'TestImplicitVariable'
]

{ #category : 'running' }
ORActionAddJavaImplicitVariableTest >> setUpAction [ 

	action := ORActionAddJavaImplicitVariable new 
		orionModel: modelV2;
		name: 'NewImplicitVariable' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaImplicitVariableTest >> testAddsCorrectEntity [
			self assert: modelV2 allImplicitVariables size equals: 1.
			action run.
			self assert: modelV2 allImplicitVariables size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaImplicitVariableTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'NewImplicitVariable'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
