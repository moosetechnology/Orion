Class {
	#name : 'ORActionAddJavaInheritanceTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> createEntities [
	modelV1 newInheritanceNamed: 'TestInheritance'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> setUpAction [ 

	action := ORActionAddJavaInheritance new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> testAddsCorrectEntity [
			self assert: modelV2 allInheritances size equals: 1.
			action run.
			self assert: modelV2 allInheritances size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
