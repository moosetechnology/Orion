Class {
	#name : 'ORActionAddJavaAccessTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> createBasicEntities [
	modelV1 newAccessNamed: 'TestAccess'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> setUpAction [ 

action := ORActionAddJavaAccess new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaAccessTest >> testAddsCorrectEntity [
			self assert: modelV2 allAcceses size equals: 1.
			action run.
			self assert: modelV2 allAcceses size equals: 2.
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
