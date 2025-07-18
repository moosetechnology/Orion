Class {
	#name : 'ORActionAddJavaTypeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaTypeTest >> createEntities [
	modelV1 newTypeNamed: 'TestType'
]

{ #category : 'running' }
ORActionAddJavaTypeTest >> setUpAction [ 

	action := ORActionAddJavaType new 
		orionModel: modelV2;
		name: 'NewType' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaTypeTest >> testAddsCorrectEntity [
			self assert: modelV2 allTypes size equals: 1.
			action run.
			self assert: modelV2 allTypes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaTypeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'NewType'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
