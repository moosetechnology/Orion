Class {
	#name : 'ORActionAddJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAnnotationTypeAttributeTest >> createBasicEntities [
	modelV1 newAnnotationTypeAttributeNamed: 'TestAnnotationTypeAttribute'
]

{ #category : 'running' }
ORActionAddJavaAnnotationTypeAttributeTest >> setUpAction [ 

action := ORActionAddJavaAnnotationTypeAttribute new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeAttributeTest >> testAddsCorrectEntity [
			self assert: modelV2 allAnnotationTypeAttributes size equals: 1.
			action run.
			self assert: modelV2 allAnnotationTypeAttributes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeAttributeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
