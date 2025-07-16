Class {
	#name : 'ORActionAddJavaInterfaceTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaInterfaceTest >> createEntities [
	modelV1 newInterfaceNamed: 'TestInterface'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInterfaceTest >> setUpAction [ 

action := ORActionAddJavaInterface new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInterfaceTest >> testAddsCorrectEntity [
			self assert: modelV2 allInterfaces size equals: 1.
			action run.
			self assert: modelV2 allInterfaces size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInterfaceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
