Class {
	#name : 'ORActionAddJavaPrimitiveTypeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaPrimitiveTypeTest >> createEntities [
	modelV1 newPrimitiveTypeNamed: 'TestPrimitiveType'
]

{ #category : 'running' }
ORActionAddJavaPrimitiveTypeTest >> setUpAction [ 

	action := ORActionAddJavaPrimitiveType new 
		orionModel: modelV2;
		name: 'NewPrimitiveType' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaPrimitiveTypeTest >> testAddsCorrectEntity [
			self assert: modelV2 allPrimitiveTypes size equals: 1.
			action run.
			self assert: modelV2 allPrimitiveTypes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaPrimitiveTypeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'NewPrimitiveType'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
