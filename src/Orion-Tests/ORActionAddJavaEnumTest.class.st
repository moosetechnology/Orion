Class {
	#name : 'ORActionAddJavaEnumTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaEnumTest >> createEntities [
	modelV1 newEnumNamed: 'TestEnum'
]

{ #category : 'running' }
ORActionAddJavaEnumTest >> setUpAction [ 

	action := ORActionAddJavaEnum new 
		orionModel: modelV2;
		name: 'NewEnum' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaEnumTest >> testAddsCorrectEntity [
			self assert: modelV2 allEnues size equals: 1.
			action run.
			self assert: modelV2 allEnues size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaEnumTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
