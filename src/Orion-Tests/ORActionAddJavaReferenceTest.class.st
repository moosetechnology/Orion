Class {
	#name : 'ORActionAddJavaReferenceTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> createBasicEntities [
	modelV1 newReferenceNamed: 'TestReference'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> setUpAction [ 

action := ORActionAddJavaReference new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> testAddsCorrectEntity [
			self assert: modelV2 allReferences size equals: 1.
			action run.
			self assert: modelV2 allReferences size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
