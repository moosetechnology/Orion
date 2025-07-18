Class {
	#name : 'ORActionAddJavaInvocationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> setUpAction [ 

	action := ORActionAddJavaInvocation new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> testAddsCorrectEntity [
			self assert: modelV2 allInvocations size equals: 0.
			action run.
			self assert: modelV2 allInvocations size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInvocationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allInvocations at:1.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
