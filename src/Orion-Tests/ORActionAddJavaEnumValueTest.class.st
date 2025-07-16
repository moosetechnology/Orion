Class {
	#name : 'ORActionAddJavaEnumValueTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaEnumValueTest >> createEntities [
	modelV1 newEnumValueNamed: 'TestEnumValue'
]

{ #category : 'running' }
ORActionAddJavaEnumValueTest >> setUpAction [ 

	action := ORActionAddJavaEnumValue new 
		orionModel: modelV2;
		name: 'NewEnumValue' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaEnumValueTest >> testAddsCorrectEntity [
			self assert: modelV2 allEnumValues size equals: 1.
			action run.
			self assert: modelV2 allEnumValues size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaEnumValueTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
