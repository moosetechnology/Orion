Class {
	#name : 'ORActionAddJavaMethodTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaMethodTest >> createBasicEntities [
	modelV1 newMethodNamed: 'TestMethod'
]

{ #category : 'running' }
ORActionAddJavaMethodTest >> setUpAction [ 

action := ORActionAddJavaMethod new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaMethodTest >> testAddsCorrectEntity [
			self assert: modelV2 allMethoes size equals: 1.
			action run.
			self assert: modelV2 allMethoes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaMethodTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
