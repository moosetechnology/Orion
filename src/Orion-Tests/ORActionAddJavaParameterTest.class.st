Class {
	#name : 'ORActionAddJavaParameterTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaParameterTest >> createEntities [
	modelV1 newParameterNamed: 'TestParameter'
]

{ #category : 'running' }
ORActionAddJavaParameterTest >> setUpAction [ 

action := ORActionAddJavaParameter new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaParameterTest >> testAddsCorrectEntity [
			self assert: modelV2 allParametees size equals: 1.
			action run.
			self assert: modelV2 allParametees size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaParameterTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
