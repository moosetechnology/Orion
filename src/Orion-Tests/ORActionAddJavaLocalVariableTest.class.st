Class {
	#name : 'ORActionAddJavaLocalVariableTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaLocalVariableTest >> createEntities [
	modelV1 newLocalVariableNamed: 'TestLocalVariable'
]

{ #category : 'running' }
ORActionAddJavaLocalVariableTest >> setUpAction [ 

action := ORActionAddJavaLocalVariable new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaLocalVariableTest >> testAddsCorrectEntity [
			self assert: modelV2 allLocalVariables size equals: 1.
			action run.
			self assert: modelV2 allLocalVariables size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaLocalVariableTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
