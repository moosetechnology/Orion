Class {
	#name : 'ORActionAddJavaParametricClassTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricClassTest >> createEntities [
	modelV1 newParametricClassNamed: 'TestParametricClass'
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricClassTest >> setUpAction [ 

action := ORActionAddJavaParametricClass new 
yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricClassTest >> testAddsCorrectEntity [
			self assert: modelV2 allParametricClases size equals: 1.
			action run.
			self assert: modelV2 allParametricClases size equals: 2.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaParametricClassTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
