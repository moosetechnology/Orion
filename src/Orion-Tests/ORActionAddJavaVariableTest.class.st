Class {
	#name : 'ORActionAddJavaVariableTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> createBasicEntities [
	modelV1 newVariableNamed: 'TestVariable'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> setUpAction [ 

action := ORActionAddJavaVariable new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> testAddsCorrectEntity [
			self assert: modelV2 allVariables size equals: 1.
			action run.
			self assert: modelV2 allVariables size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaVariableTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
