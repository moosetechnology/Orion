Class {
	#name : 'ORActionAddJavaWildcardTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaWildcardTest >> createBasicEntities [
	modelV1 newWildcardNamed: 'TestWildcard'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaWildcardTest >> setUpAction [ 

action := ORActionAddJavaWildcard new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaWildcardTest >> testAddsCorrectEntity [
			self assert: modelV2 allWildcares size equals: 1.
			action run.
			self assert: modelV2 allWildcares size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaWildcardTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
