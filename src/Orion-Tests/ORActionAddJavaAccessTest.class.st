Class {
	#name : 'ORActionAddJavaAccessTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> createEntities [
	modelV1 newAccessNamed: 'TestAccess'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> setUpAction [ 

	action := ORActionAddJavaAccess new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> testAddsCorrectEntity [
			self assert: modelV2 allAccesses size equals: 1.
			action run.
			self assert: modelV2 allAccesses size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
