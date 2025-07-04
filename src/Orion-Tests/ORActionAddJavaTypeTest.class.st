Class {
	#name : 'ORActionAddJavaTypeTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaTypeTest >> createBasicEntities [
	modelV1 newTypeNamed: 'TestType'
]

{ #category : 'running' }
ORActionAddJavaTypeTest >> setUpAction [ 

action := ORActionAddJavaType new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaTypeTest >> testAddsCorrectEntity [
			self assert: modelV2 allTypes size equals: 1.
			action run.
			self assert: modelV2 allTypes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaTypeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
