Class {
	#name : 'ORActionAddJavaAttributeTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAttributeTest >> createBasicEntities [
	modelV1 newAttributeNamed: 'TestAttribute'
]

{ #category : 'running' }
ORActionAddJavaAttributeTest >> setUpAction [ 

action := ORActionAddJavaAttribute new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaAttributeTest >> testAddsCorrectEntity [
			self assert: modelV2 allAttributes size equals: 1.
			action run.
			self assert: modelV2 allAttributes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaAttributeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
