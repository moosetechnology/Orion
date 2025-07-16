Class {
	#name : 'ORActionAddJavaExceptionTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaExceptionTest >> createEntities [
	modelV1 newExceptionNamed: 'TestException'
]

{ #category : 'running' }
ORActionAddJavaExceptionTest >> setUpAction [ 

	action := ORActionAddJavaException new 
		orionModel: modelV2;
		name: 'NewException' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaExceptionTest >> testAddsCorrectEntity [
			self assert: modelV2 allExceptioes size equals: 1.
			action run.
			self assert: modelV2 allExceptioes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaExceptionTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
