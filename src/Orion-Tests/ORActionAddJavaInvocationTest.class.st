Class {
	#name : 'ORActionAddJavaInvocationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> createEntities [
	modelV1 newInvocationNamed: 'TestInvocation'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> setUpAction [ 

	action := ORActionAddJavaInvocation new 
		orionModel: modelV2;
		name: 'NewInvocation' ;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> testAddsCorrectEntity [
			self assert: modelV2 allInvocatioes size equals: 1.
			action run.
			self assert: modelV2 allInvocatioes size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
