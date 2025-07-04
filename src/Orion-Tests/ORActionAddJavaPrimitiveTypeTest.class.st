Class {
	#name : 'ORActionAddJavaPrimitiveTypeTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaPrimitiveTypeTest >> createBasicEntities [
	modelV1 newPrimitiveTypeNamed: 'TestPrimitiveType'
]

{ #category : 'running' }
ORActionAddJavaPrimitiveTypeTest >> setUpAction [ 

action := ORActionAddJavaPrimitiveType new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaPrimitiveTypeTest >> testAddsCorrectEntity [
			self assert: modelV2 allPrimitiveTypes size equals: 1.
			action run.
			self assert: modelV2 allPrimitiveTypes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaPrimitiveTypeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
