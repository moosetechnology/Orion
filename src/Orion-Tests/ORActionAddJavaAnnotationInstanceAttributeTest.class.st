Class {
	#name : 'ORActionAddJavaAnnotationInstanceAttributeTest',
	#superclass : 'ORActionTestJavaModel',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAnnotationInstanceAttributeTest >> createBasicEntities [
	modelV1 newAnnotationInstanceAttributeNamed: 'TestAnnotationInstanceAttribute'
]

{ #category : 'running' }
ORActionAddJavaAnnotationInstanceAttributeTest >> setUpAction [ 

action := ORActionAddJavaAnnotationInstanceAttribute new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceAttributeTest >> testAddsCorrectEntity [
			self assert: modelV2 allAnnotationInstanceAttributes size equals: 1.
			action run.
			self assert: modelV2 allAnnotationInstanceAttributes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceAttributeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
