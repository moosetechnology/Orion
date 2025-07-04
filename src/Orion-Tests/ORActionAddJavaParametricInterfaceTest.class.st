Class {
	#name : 'ORActionAddJavaParametricInterfaceTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricInterfaceTest >> createBasicEntities [
	modelV1 newParametricInterfaceNamed: 'TestParametricInterface'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricInterfaceTest >> setUpAction [ 

action := ORActionAddJavaParametricInterface new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricInterfaceTest >> testAddsCorrectEntity [
			self assert: modelV2 allParametricInterfaces size equals: 1.
			action run.
			self assert: modelV2 allParametricInterfaces size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricInterfaceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
