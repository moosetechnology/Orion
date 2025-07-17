Class {
	#name : 'ORActionAddJavaMethodTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaMethodTest >> createEntities [
	modelV1 newMethodNamed: 'TestMethod'
]

{ #category : 'running' }
ORActionAddJavaMethodTest >> setUpAction [ 

	action := ORActionAddJavaMethod new
		orionModel: modelV2 ;
		name: 'newMethod' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaMethodTest >> testAddsCorrectEntity [
			self assert: modelV2 allMethods size equals: 1.
			action run.
			self assert: modelV2 allMethods size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaMethodTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'newMethod'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
