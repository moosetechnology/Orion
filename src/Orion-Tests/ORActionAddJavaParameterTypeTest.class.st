Class {
	#name : 'ORActionAddJavaParameterTypeTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterTypeTest >> createBasicEntities [
	modelV1 newParameterTypeNamed: 'TestParameterType'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterTypeTest >> setUpAction [ 

action := ORActionAddJavaParameterType new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterTypeTest >> testAddsCorrectEntity [
			self assert: modelV2 allParameterTypes size equals: 1.
			action run.
			self assert: modelV2 allParameterTypes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterTypeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
